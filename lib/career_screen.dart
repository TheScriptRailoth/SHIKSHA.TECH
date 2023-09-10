import 'package:flutter/material.dart';
class CareerScreen extends StatelessWidget {
  const CareerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Career Opportunity"),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Color(0xFF4E74F9),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_active_sharp),
              onPressed: (){},
            ),
          ]
      ),
    );
  }
}
