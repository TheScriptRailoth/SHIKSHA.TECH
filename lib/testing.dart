import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class testing extends StatefulWidget {
  @override
  _testing createState() => _testing();
}

class _testing extends State<testing> {
  List<Course> searchResults = [];
  bool isLoading = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Internships'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter your search query',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    fetchData();
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : buildSearchResults(),
          ),
        ],
      ),
    );
  }

  Widget buildSearchResults() {
    if (searchResults.isEmpty) {
      return Center(child: Text('No results found.'));
    }

    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final course = searchResults[index];
        return ListTile(
          title: Text(course.title),
          subtitle: Text(course.companyName),
          trailing: Text(course.location),
          // You can display other course details here
        );
      },
    );
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    final searchValue = _searchController.text;
    final urlMap = {
      'title': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/intern?domain='+searchValue),
      'companyName': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internCompany?domain='+searchValue),
      // 'location': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internlocation?domain='+searchValue),
      // 'stipend': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internstipend?domain='+searchValue),
      // 'startDate': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internstartDate?domain='+searchValue),
      'duration': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internDuration?domain='+searchValue),
    };

    try {
      final List<Future<http.Response>> requests = urlMap.values.map((url) => http.get(url)).toList();
      final List<http.Response> responses = await Future.wait(requests);

      if (responses.every((response) => response.statusCode == 200)) {
        final responseBodies = responses.map((response) => response.body).toList();

        for (int i = 0; i < responseBodies.length; i++) {
          final paramName = urlMap.keys.elementAt(i);
          final responseBody = responseBodies[i];
          final dataList = json.decode(responseBody) as List<dynamic>;

          for (final data in dataList) {
            final title = data['title'] as String;
            final companyName = data['companyName'] as String;
            final location = data['location'] as String;
            final stipend = data['stipend'] as String;
            final startDate = data['startDate'] as String;
            final duration = data['duration'] as String;

            searchResults.add(Course(
              title: title,
              companyName: companyName,
              location: location,
              stipend: stipend,
              startDate: startDate,
              duration: duration,
            ));
          }
        }
      } else {
        // Handle HTTP error statuses
        print('Request failed with status codes: ${responses.map((response) => response.statusCode)}');
      }
    } catch (error) {
      print('An error occurred: $error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
}

class Course {
  final String title;
  final String companyName;
  final String location;
  final String stipend;
  final String startDate;
  final String duration;

  Course({
    required this.title,
    required this.companyName,
    required this.location,
    required this.stipend,
    required this.startDate,
    required this.duration,
  });
}
