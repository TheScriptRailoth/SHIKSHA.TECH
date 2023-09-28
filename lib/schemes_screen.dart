import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Schemes extends StatefulWidget {
  @override
  _SchemesState createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {
  final double _borderRadius = 24;

  var items = [
    PlaceInfo('Babu Jagjivan Ram Chhatrawas Yojna', Color(0xff6DC8F3), Color(0xff73A1F9), 'Central', 'Ministry Of Social Justice and Empowerment'),
    PlaceInfo('National Overseas Scholarship For Scheduled Caste Etc. Candidates', Color(0xffFFB157), Color(0xffFFA057),
        'Central', 'Ministry Of Social Justice and Empowerment'),
    PlaceInfo('Internship Scheme For PG/Research Students In Directorate General Of Trade Remedies (DGTR)', Color(0xffFF5B95), Color(0xffF8556D),
        'Central', 'Ministry Of Commerce And Industry'),
    PlaceInfo('MeitY - Digital India Internship Scheme', Color(0xffD76EF5), Color(0xff8F7AFE),
        'Central', 'Ministry of Electronics and Information Technology'),
    PlaceInfo('Post Graduate Merit Scholarship Scheme For University Rank Holders At Under-Graduate Level Applicable', Color(0xff42E695), Color(0xff3BB2B8),
        'Central', 'Ministry of Education'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4E74FF),
        title: Text('Schemes'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(colors: [
                        items[index].startColor,
                        items[index].endColor
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: items[index].endColor,
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(_borderRadius,
                          items[index].startColor, items[index].endColor),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  items[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  items[index].category,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Avenir',
                                  ),
                                ),
                                SizedBox(height: 16),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.policy_rounded,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Flexible(
                                      child: Text(
                                        items[index].location,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Avenir',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceInfo {
  final String name;
  final String category;
  final String location;
  final Color startColor;
  final Color endColor;

  PlaceInfo(this.name, this.startColor, this.endColor,
      this.location, this.category);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}