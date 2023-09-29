import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shiksha_tech/widgets/search_course_card.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required this.title});
  final String title;

  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  List<Course> searchResults = [];
  // This controller will store the value of the search bar
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
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // Add padding around the search bar
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                // Use a Material design search bar
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    // Add a clear button to the search bar
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () => _searchController.clear(),
                    ),
                    // Add a search icon or button to the search bar
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        String searchValue = _searchController.value.text.toString();
                        print(searchValue);
                        // Future<void> fetchData() async {
                        //   final url1 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predict?title=' + searchValue);
                        //   final url2 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predictImg?title=' + searchValue);
                        //   final url4 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predictNumber?title=' + searchValue); // Replace with the actual URL for video count
                        //
                        //   final response1 = await http.get(url1);
                        //   final response2 = await http.get(url2);
                        //   final response4 = await http.get(url4); // Fetch video count
                        //
                        //   if (response1.statusCode == 200 && response2.statusCode == 200 && response4.statusCode == 200) {
                        //     final responseBody1 = await response1.body;
                        //     final responseBody2 = await response2.body;
                        //     final responseBody4 = await response4.body; // Response for video count
                        //     final parsedResponse1 = json.decode(responseBody1);
                        //     final parsedResponse2 = json.decode(responseBody2);
                        //     final parsedResponse4 = json.decode(responseBody4); // Parsed video count data
                        //
                        //     print('API Response 1: $parsedResponse1');
                        //     print('API Response 2: $parsedResponse2');
                        //     print('API Response 4: $parsedResponse4'); // Log video count data
                        //
                        //     setState(() {
                        //       searchResults.clear();
                        //
                        //       if (parsedResponse1 is List<dynamic> &&
                        //           parsedResponse2 is List<dynamic> &&
                        //           parsedResponse4 is int) { // Ensure that parsedResponse4 is of the correct type (int)
                        //         for (int i = 0;
                        //         i < parsedResponse1.length &&
                        //             i < parsedResponse2.length &&
                        //             i < parsedResponse4; // Loop up to the minimum length
                        //         i++) {
                        //           if (parsedResponse1[i] is String &&
                        //               parsedResponse2[i] is String) {
                        //             searchResults.add(Course(
                        //                 title: parsedResponse1[i],
                        //                 imageUrl: parsedResponse2[i],
                        //                 videoCount: parsedResponse4)); // Add video count
                        //           }
                        //         }
                        //       }
                        //     });
                        //   } else {
                        //     print('Request failed with status: ${response1.statusCode} or ${response2.statusCode} or ${response4.statusCode}');
                        //     // Handle the error, e.g., display an error message to the user.
                        //   }
                        // }

                        Future<void> fetchData() async {
                          final url1 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predict?title=' + searchValue);
                          final url2 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predictImg?title='+searchValue); // Replace with the actual URL for the second API
                          //final url3 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predictRating?title='+searchValue); // Replace with the actual URL for the second API

                          final response1 = await http.get(url1);
                          final response2 = await http.get(url2);
                          //final response3 = await http.get(url3);

                          if (response1.statusCode == 200 && response2.statusCode == 200) {
                            final responseBody1 = await response1.body;
                            final responseBody2 = await response2.body;
                            //final responseBody3 = await response3.body;
                            final parsedResponse1 = json.decode(responseBody1);
                            final parsedResponse2 = json.decode(responseBody2);
                            //final parsedResponse3 = json.decode(responseBody3);

                            print('API Response 1: $parsedResponse1');
                            print('API Response 2: $parsedResponse2');
                            //print('API Response 3: $parsedResponse3');

                            setState(() {
                              searchResults.clear();

                              if (parsedResponse1 is List<dynamic> && parsedResponse2 is List<dynamic>) {
                                for (int i = 0; i < parsedResponse1.length && i < parsedResponse2.length; i++) {
                                  if (parsedResponse1[i] is String && parsedResponse2[i] is String) {
                                    searchResults.add(Course(title: parsedResponse1[i], imageUrl: parsedResponse2[i]));
                                  }
                                }
                              }
                            });
                          } else {
                            print('Request failed with status: ${response1.statusCode} or ${response2.statusCode}');
                          }
                        }
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
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              )

          ),
          Expanded(
            child: buildSearchResults(), // Call it like this
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
        final course = searchResults[index];
        return SearchCourseCard(
          thumbNail: course.imageUrl,
          videoAmount: '',
          title: course.title,
          userProfile: '',
          userName: '',
          rating:'',
        );
      },
    );
  }
}
class Course {
  final String title;
  final String imageUrl;
  // final int videoCount;
  // final String ratingNo;
  //final String description;
  Course({required this.title,required this.imageUrl});
}