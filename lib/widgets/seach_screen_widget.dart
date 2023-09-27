import 'package:flutter/material.dart';
import 'package:http/browser_client.dart';
import 'package:shiksha_tech/base_client.dart';

import 'package:http/http.dart' as http;
class SearchScreenWidget extends StatefulWidget {
  const SearchScreenWidget({super.key,required this.title});
  final String title;
  @override
  State<SearchScreenWidget> createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutterassets.com'),
      ),
      body: Padding(
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
                    String searchValue = _searchController.value.text
                        .toString();
                    print(searchValue);
                    // Perform the search here
                    Future<void> fetchData() async {
                      final url = Uri.parse(
                          'https://0ef5-49-38-158-6.ngrok-free.app/predict?title=' +
                              searchValue); // Replace with your API endpoint URL

                      final response = await http.get(url);

                      if (response.statusCode == 200) {
                        final responseBody = await response.body;
                        print('Response data: $responseBody');
                      } else {
                        print('Request failed with status: ${response
                            .statusCode}');
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
    );
  }
}
