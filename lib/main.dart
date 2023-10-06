import 'package:flutter/material.dart';
import 'package:shiksha_tech/clipps_screen.dart';
import 'package:shiksha_tech/message_page.dart';
import 'package:shiksha_tech/home_screen.dart';
import 'package:shiksha_tech/lecture_screen.dart';
import 'package:shiksha_tech/my_schemes_screen.dart';
import 'package:shiksha_tech/testing.dart';
import 'package:shiksha_tech/widgets/add_question_widget.dart';
import 'package:shiksha_tech/widgets/custom_drawer.dart';
import 'package:shiksha_tech/widgets/seach_screen_widget.dart';
import 'package:shiksha_tech/widgets/search_course_card.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF4E74F9), // Set the status bar color here
    statusBarIconBrightness: Brightness.light, // Light status bar icons (e.g., for dark backgrounds)
    statusBarBrightness: Brightness.dark, // Dark status bar text (e.g., for light backgrounds)
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
