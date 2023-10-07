import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shiksha_tech/widgets/courses_data.dart';
import 'package:shiksha_tech/widgets/search_course_card.dart';
import 'package:shiksha_tech/widgets/search_intern_card.dart';
class SearchInternScreen extends StatefulWidget {
  const SearchInternScreen({super.key});


  @override
  State<SearchInternScreen> createState() => _SearchInternScreen();
}

class _SearchInternScreen extends State<SearchInternScreen> {
  List<Course> searchResults = [];
  bool isLoading = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF4E74F9),
        title: const Text('Search Here'),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 90,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color:Color(0xFF4E74F9),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  ),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        width: 350,
                        height: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,top: 5),
                                child: Container(
                                  width: 250,
                                  height: 38,
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 4, top: 10),
                                    child: TextFormField(
                                      controller: _searchController,
                                      decoration: InputDecoration(
                                        hintText: 'Search Job or Internships',
                                        border: InputBorder.none, // Remove the underline
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xFF4E74F9).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF4E74F9).withOpacity(0.5),
                                    spreadRadius: 0.0,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 2),
                                  )
                                ],
                              ),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(Icons.search,),
                                  onPressed: (){
                                    String searchValue = _searchController.value.text.toString();
                                    print(searchValue);

                                    Future<void> fetchData() async {

                                      setState(() {
                                        isLoading = true; // Set loading state to true
                                      });

                                      final url1=Uri.parse('https://bef1-49-43-41-194.ngrok-free.app/intern?domain=' + searchValue);
                                      final url2=Uri.parse('https://bef1-49-43-41-194.ngrok-free.app/internCompany?domain=' + searchValue);   try {
                                        final response1 = await http.get(url1);
                                        final response2 = await http.get(url2);

                                        if (response1.statusCode == 200 && response2.statusCode == 200) {
                                          final responseBody1 = await response1.body;
                                          final responseBody2 = await response2.body;

                                          final parsedResponse1 = json.decode(responseBody1);
                                          final parsedResponse2 = json.decode(responseBody2);

                                          print('API Response 1: $parsedResponse1');
                                          print('API Response 2: $parsedResponse2');

                                          setState(() {
                                            searchResults.clear();

                                            if (parsedResponse1 is List<dynamic> && parsedResponse2 is List<dynamic>) {
                                              for (int i = 0;i < parsedResponse1.length && i < parsedResponse2.length;i++) {
                                                if (parsedResponse1[i] is String && parsedResponse2[i] is String) {
                                                  searchResults.add(Course(
                                                      title: parsedResponse1[i],
                                                      companyName: parsedResponse2[i],
                                                    )
                                                  );
                                                }
                                              }
                                            }
                                          });
                                        } else {
                                          Center(
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              child: Image.asset('icons/offline.png'),
                                            ),
                                          );
                                          print(
                                              'Request failed with status: ${response1.statusCode} or ${response2.statusCode}');
                                        }
                                      } catch (error) {
                                        print('An error occurred: $error');
                                      } finally {
                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    }


                                    // Future<void> fetchData() async {
                                    //   setState(() {
                                    //     isLoading = true;
                                    //   });
                                    //
                                    //   final searchValue = _searchController.text;
                                    //   final urlMap = {
                                    //     'title': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/intern?domain='+searchValue),
                                    //     'companyName': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internCompany?domain='+searchValue),
                                    //     // 'location': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internlocation?domain='+searchValue),
                                    //     // 'stipend': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internstipend?domain='+searchValue),
                                    //     // 'startDate': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internstartDate?domain='+searchValue),
                                    //     'duration': Uri.parse('https://7245-49-43-42-71.ngrok-free.app/internDuration?domain='+searchValue),
                                    //   };
                                    //
                                    //   try {
                                    //     final List<Future<http.Response>> requests = urlMap.values.map((url) => http.get(url)).toList();
                                    //     final List<http.Response> responses = await Future.wait(requests);
                                    //
                                    //     if (responses.every((response) => response.statusCode == 200)) {
                                    //       final responseBodies = responses.map((response) => response.body).toList();
                                    //
                                    //       for (int i = 0; i < responseBodies.length; i++) {
                                    //         final paramName = urlMap.keys.elementAt(i);
                                    //         final responseBody = responseBodies[i];
                                    //         final dataList = json.decode(responseBody) as List<dynamic>;
                                    //
                                    //         for (final data in dataList) {
                                    //           final title = data['title'] as String;
                                    //           final companyName = data['companyName'] as String;
                                    //           final location = data['location'] as String;
                                    //           final stipend = data['stipend'] as String;
                                    //           final startDate = data['startDate'] as String;
                                    //           final duration = data['duration'] as String;
                                    //
                                    //           searchResults.add(Course(
                                    //             title: title,
                                    //             companyName: companyName,
                                    //             location: location,
                                    //             stipend: stipend,
                                    //             startDate: startDate,
                                    //             duration: duration,
                                    //           ));
                                    //         }
                                    //       }
                                    //     } else {
                                    //       // Handle HTTP error statuses
                                    //       print('Request failed with status codes: ${responses.map((response) => response.statusCode)}');
                                    //     }
                                    //   } catch (error) {
                                    //     print('An error occurred: $error');
                                    //   } finally {
                                    //     setState(() {
                                    //       isLoading = false;
                                    //     });
                                    //   }
                                    // }


                                    fetchData();
                                    //Navigator.push(
                                    // context,
                                    //MaterialPageRoute(
                                    //builder: (context) {
                                    // Replace 'YourDestinationScreen' with the actual screen you want to navigate to
                                    //return SearchScreen('Flutter');
                                    // },
                                    // ),
                                    //);
                                  },
                                ),
                              ),
                            ),
                          ],

                        ),
                      ),
                    ),
                  ]),
            ],
          ),

          Expanded(
            child: isLoading
                ? Center(child: CircularProgressIndicator())
                : buildSearchResults(),
          ),

          // if (searchResults.isNotEmpty)
          //     buildSearchResults(),
        ],
      ),
    );
  }
  Widget buildSearchResults() {
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        if (index < searchResults.length) {
          final course = searchResults[index];
          return SearchInternCard(
            company: course.companyName,
            location: 'Work from home',
            title: course.title,
            start: 'Immediately',
            duration:'3 months',
            stipend: '2,000-3,000 /month',
          );
        }
        return Container();
      },
    );
  }

}
class Course {
  final String title;
  final String companyName;
  // final String location;
  // final String stipend;
  // final String startDate;
  // final String duration;
  Course({required this.title,required this.companyName});
}