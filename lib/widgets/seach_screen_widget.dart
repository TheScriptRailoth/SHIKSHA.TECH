import 'dart:convert';
import 'dart:io';

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
  bool isLoading = false;
  bool serverOffline=false;
  bool userOffline=false;
  String s='';
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
                                        hintText: 'Track down your Interest..',
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
                                          serverOffline=false;
                                          isLoading = true;
                                          userOffline=false;
                                        });

                                        final url1 = Uri.parse('https://bef1-49-43-41-194.ngrok-free.app/predict?title=' + searchValue);
                                        final url2 = Uri.parse('https://bef1-49-43-41-194.ngrok-free.app/predictImg?title=' + searchValue);

                                        try {
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

                                              if (parsedResponse1 is List<dynamic> &&
                                                  parsedResponse2 is List<dynamic>) {
                                                for (int i = 0;
                                                i < parsedResponse1.length && i < parsedResponse2.length;
                                                i++) {
                                                  if (parsedResponse1[i] is String &&
                                                      parsedResponse2[i] is String) {
                                                    searchResults.add(Course(
                                                        title: parsedResponse1[i],
                                                        imageUrl: parsedResponse2[i]));
                                                  }
                                                }
                                              }
                                            });
                                          }else if (response1.statusCode == 404 && response2.statusCode == 404) {
                                            print('Request failed with status: ${response1.statusCode} or ${response2.statusCode}');
                                            // Set the serverOffline flag to true
                                            setState(() {
                                              isLoading = false;
                                              serverOffline = true;
                                            });
                                          }

                                        } catch (error) {
                                          print('An error occurred: $error');
                                          userOffline=true;
                                        } finally {
                                          setState(() {
                                            isLoading = false; // Set loading state to false after data is fetched or on error
                                          });
                                        }
                                      }


                                      // Future<void> fetchData() async {
                                      //   setState(() {
                                      //     isLoading = true; // Set loading state to true
                                      //   });
                                      //   final url1 = Uri.parse('https://7245-49-43-42-71.ngrok-free.app/predict?title=' +searchValue);
                                      //   final url2 = Uri.parse('https://7245-49-43-42-71.ngrok-free.app/predictImg?title=' +searchValue);
                                      //   //final url3 = Uri.parse('https://bbe5-49-43-41-199.ngrok-free.app/predictRating?title='+searchValue);
                                      //   final response1 = await http.get(url1);
                                      //   final response2 = await http.get(url2);
                                      //   //final response3 = await http.get(url3);
                                      //     if (response1.statusCode == 200 && response2.statusCode == 200) {
                                      //       final responseBody1 = await response1
                                      //           .body;
                                      //       final responseBody2 = await response2
                                      //           .body;
                                      //       //final responseBody3 = await response3.body;
                                      //       final parsedResponse1 =
                                      //       json.decode(responseBody1);
                                      //       final parsedResponse2 =
                                      //       json.decode(responseBody2);
                                      //       //final parsedResponse3 = json.decode(responseBody3);
                                      //
                                      //       print(
                                      //           'API Response 1: $parsedResponse1');
                                      //       print(
                                      //           'API Response 2: $parsedResponse2');
                                      //       //print('API Response 3: $parsedResponse3');
                                      //
                                      //       setState(() {
                                      //         searchResults.clear();
                                      //
                                      //         if (parsedResponse1 is List<
                                      //             dynamic> &&
                                      //             parsedResponse2 is List<
                                      //                 dynamic>) {
                                      //           for (int i = 0;
                                      //           i < parsedResponse1.length &&
                                      //               i < parsedResponse2.length;
                                      //           i++) {
                                      //             if (parsedResponse1[i] is String &&
                                      //                 parsedResponse2[i] is String) {
                                      //               searchResults.add(Course(
                                      //                   title: parsedResponse1[i],
                                      //                   imageUrl: parsedResponse2[i]));
                                      //             }
                                      //           }
                                      //         }
                                      //       });
                                      //     } else {
                                      //       Center(
                                      //         child: Container(
                                      //           height: 40,
                                      //           width: 40,
                                      //           child: Image.asset(
                                      //               'icons/offline.png'),
                                      //         ),
                                      //       );
                                      //       print(
                                      //           'Request failed with status: ${response1
                                      //               .statusCode} or ${response2
                                      //               .statusCode}');
                                      //     }
                                      // }

                                      fetchData();
                                      s=searchValue;
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
                : serverOffline
                ? Center(child:
                    Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*.2,),
                        Container(
                          height: 100,
                            width: 100,
                            child: Image.asset('icons/offline.png')
                        ),
                        SizedBox(height: 10,),
                        Text('Server is offline. Please try again later.'),
                      ],
                    )
                  )
                :userOffline
                ?Center(child:
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.2,),
                Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('icons/offline.png')
                ),
                SizedBox(height: 10,),
                Text('You are offline. Please try again later.'),
              ],
            )
            )
                : buildSearchResults(),
          ),
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
          searchValue: s,
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