import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shiksha_tech/widgets/category.dart';
import 'package:shiksha_tech/widgets/place_holder.dart';
import 'package:shiksha_tech/widgets/search_intern_card.dart';
import 'insternship_search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Course> searchResults = [];
  bool isLoading = false;
  final TextEditingController _searchController = TextEditingController();
  double appPadding = 25.0;
  double spacer = 50.0;
  double smallSpacer = 30.0;
  double miniSpacer = 10.0;
  final bool extend = true;
  bool isSearchPerformed=false;
  @override
  Widget build(BuildContext context) {

    Widget defaultResult = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Searches',
              style: TextStyle(
                color: Color(0xff022b3f),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            (extend)
                ? GestureDetector(
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   route,
                //   arguments: arg,
                // );
              },
              child: Text(
                'See More',
                style: TextStyle(
                    color: Color(0xFF4E74F9),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            )
                : Container(),
          ],
        ),
        SizedBox(height: smallSpacer),

        // Suggestions
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          children: List.generate(CategoryItem.length, (index) {
            return Container(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 10.0,
                bottom: 10.0,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF4E74F9).withOpacity(0.7),
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF4E74F9).withOpacity(0.5),
                    spreadRadius: 0.0,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                CategoryItem[index]['title'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            );
          }),
        ),
        SizedBox(height: spacer),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recommended For You',
              style: TextStyle(
                color: Color(0xff022b3f),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            (false)
                ? GestureDetector(
              onTap: () {
                // Navigator.pushNamed(
                //   context,
                //   route,
                //   arguments: arg,
                // );
              },
              child: Text(
                'See More',
                style: TextStyle(
                    color: Color(0xFF4E74F9),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400),
              ),
            )
                : Container(),
          ],
        ),
        SizedBox(height: smallSpacer),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: appPadding, right: appPadding, left: appPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
              SizedBox(height: spacer - 1.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      color: Color(0xff022b3f),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Seek for your preference',
                    style: TextStyle(
                      color: Color(0xff022b3f),
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: spacer),
              GestureDetector(
                onTap: (){
                  _navigateToSearchPage(context);
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
                              padding: const EdgeInsets.only(bottom: 10, top: 8, right: 90),
                              child: Text(
                                  'Search Job or Internships', style: TextStyle(color: Colors.grey.withOpacity(0.9)),
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
                            onPressed: (){},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                    getBody(defaultResult)
              ]
      ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SearchInternCard(
                    company: 'Netflix',
                    location: 'Work from home',
                    title: 'Flutter Developer',
                    start: 'Immediately',
                    duration: '3 months',
                    stipend: '3,000 /month',
                  ),
                  SearchInternCard(
                    company: 'Google',
                    location: 'Work from home',
                    title: 'Web Developer',
                    start: 'Immediately',
                    duration: '3 months',
                    stipend: '2,000-3,000 /month',
                  ),
                  SearchInternCard(
                    company: 'Microsoft',
                    location: 'Redmond, WA',
                    title: 'Data Science Intern',
                    start: 'Fall 2023',
                    duration: '4 months',
                    stipend: '9,000 /month',
                  ),
                  SearchInternCard(
                    company: 'TCS',
                    location: 'Bangalore',
                    title: 'Data Manager',
                    start: 'November',
                    duration: '4 months',
                    stipend: '7,000 /month',
                  ),
                  SearchInternCard(
                    company: 'Amazon',
                    location: 'Seattle, WA',
                    title: 'Software Engineering Intern',
                    start: 'Summer 2023',
                    duration: '3 months',
                    stipend: '8,000 /month',
                  ),
                  SearchInternCard(
                    company: 'Facebook',
                    location: 'Menlo Park, CA',
                    title: 'Product Management Intern',
                    start: 'Summer 2023',
                    duration: '12 weeks',
                    stipend: '9,500 /month',
                  ),
                  SearchInternCard(
                    company: 'Apple',
                    location: 'Cupertino, CA',
                    title: 'iOS Developer Intern',
                    start: 'Summer 2023',
                    duration: '3 months',
                    stipend: '7,500 /month',
                  ),
                ],
              ),

            ),
          ],
        )
      )
    );
  }
  Widget getBody(Widget content) {
    var size = MediaQuery.of(context).size;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: spacer),
          content,
        ],
    );
  }
  void _navigateToSearchPage(BuildContext context) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) {
          return SearchInternScreen();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0); // Start the animation from bottom
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
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