import 'package:flutter/material.dart';
import 'package:shiksha_tech/clipps_screen.dart';
import 'package:shiksha_tech/message_page.dart';
import 'package:shiksha_tech/home_screen.dart';
import 'package:shiksha_tech/lecture_screen.dart';
import 'package:shiksha_tech/my_schemes_screen.dart';
import 'package:shiksha_tech/widgets/add_question_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySchemesScreen(),
    );
  }
}
