import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class VideoSelection extends StatefulWidget {
  const VideoSelection({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  _VideoSelectionState createState() => _VideoSelectionState();
}

class _VideoSelectionState extends State<VideoSelection> {

  List searchResults = [];
  Future<void> fetchData() async {
    final url1 = Uri.parse('https://385a-49-43-41-194.ngrok-free.app/course?title='+ widget.title);
    // final url2 = Uri.parse('https://7245-49-43-42-71.ngrok-free.app/predictImg?title=' + searchValue);

    try {
      final response1 = await http.get(url1);
      // final response2 = await http.get(url2);

      if (response1.statusCode == 200) {
        final responseBody1 = await response1.body;
        // final responseBody2 = await response2.body;

        final parsedResponse1 = json.decode(responseBody1);
        // final parsedResponse2 = json.decode(responseBody2);

        print('API Response 1: $parsedResponse1');
        // print('API Response 2: $parsedResponse2');

        setState(() {
          searchResults.clear();

          if (parsedResponse1 is List<dynamic>) {
            for (int i = 0;
            i < parsedResponse1.length;i++) {
              if (parsedResponse1[i] is String) {
                searchResults.add(parsedResponse1[i]);
              }
            }
          }
        });
      }else if (response1.statusCode == 404) {
        print('Request failed with status: ${response1.statusCode}');
        // Set the serverOffline flag to true
      }

    } catch (error) {
      print('An error occurred: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    print(searchResults);
    return ListView.builder(
      itemCount: searchResults.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){},
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 0 ? Color(0xFF4E74F9) : Color(0xFF4E74F9).withOpacity(0.5),
              ),
              child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 30,),
            ),
            title: Text(searchResults[index]),
            subtitle: Text("25min 56sec"),
          ),
        );
      },
    );
  }
}
