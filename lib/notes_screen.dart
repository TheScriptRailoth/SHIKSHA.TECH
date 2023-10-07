import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreen();
}

class _NotesScreen extends State<NotesScreen> {
  List<bool> _isTileExpanded = List.generate(13, (index) => false);
  List<Widget> buildSectionTiles(String sectionTitle, List<Map<String, String>> sectionLinks, int sectionIndex) {
    return sectionLinks.map((link) {
      return buildPdfLink(link['title']!, link['pdfPath']!, sectionIndex);
    }).toList();
  }
  ListTile buildPdfLink(String title, String pdfPath, int sectionIndex) {
    return ListTile(
      title: Text(title,
        style: TextStyle( fontWeight: FontWeight.bold,
        ),),
      onTap: () async {
        if (await canLaunch(pdfPath)) {
          await launch(pdfPath);
        } else {
          throw 'Could not launch $pdfPath';
        }
      },
    );
  }
  Card buildPdfCard(String title, String pdfPath, int sectionIndex) {
    return Card(
      elevation: 0.0,
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      color: Colors.blueAccent.shade100,
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.black),),
        onTap: () async {
          if (await canLaunch(pdfPath)) {
            await launch(pdfPath);
          } else {
            throw 'Could not launch $pdfPath';
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color generateRandomColor(String seed) {
      final random = Random(seed.codeUnitAt(0));
      return Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1.0,
      );
    }
    final List<Map<String, dynamic>> sections = [
      {
        'title': 'Android Development',
        'links': [
          {'title': 'IDE Setup', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Layouts', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Photo Frame', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Navigation Drawer', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Video Embedding', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Seekbar Methods', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'List Views', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Using APIs', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Splash Screen', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Cardviews', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Custom Notifications', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'Database', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'JSON', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },
      {
        'title': 'Web Development',
        'links': [
          {
            'title': 'Basic Concepts',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp01.pdf'
          },
          {
            'title': 'Setting up a web Server',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp02.pdf'
          },
          {
            'title': 'Basic HTML',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp03.pdf'
          },
          {
            'title': 'HTML tables',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp04.pdf'
          },
          {
            'title': 'HTML Forms',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp05.pdf'
          },
          {
            'title': 'HTML iFrame',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp06.pdf'
          },
          {
            'title': 'XML',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp07.pdf'
          },
          {
            'title': 'Style Sheets',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp08.pdf'
          },
          {
            'title': 'Web Designs',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp09.pdf'
          },
          {
            'title': 'Internet Commerce',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp10.pdf'
          },
          {
            'title': 'JavaScript 1:Basic Scripting',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp11.pdf'
          },
          {
            'title': 'JavaScript 2:Event Handling',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp12.pdf'
          },
          {
            'title': 'JavaScript 3:Functions',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp13.pdf'
          },
          {
            'title': 'JavaScript 4:Objects and Arrays',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp14.pdf'
          },
          {
            'title': 'Interactive Images',
            'pdfPath': 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp15.pdf'
          },
        ],
      },

      {
        'title': 'Java Programming',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'C Programming',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title':'C++ Programming',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Data Science',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Artificial Intelligence',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Machine Learning',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Graphic Designing',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Java Programming',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Augmented Reality',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Virtual Reality',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },

      {
        'title': 'Mixed Reality',
        'links': [
          {'title': 'Concept', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
          {'title': 'App development', 'pdfPath': 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'},
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF4E74F9),
        title: Text('Notes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: 360,
              height: 50,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                border: Border.all(width: 0.2)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      width: 250,
                      height: 38,
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4, top: 10, right: 100),
                        child: Text(
                          textAlign: TextAlign.left,
                          "Search for Notes..",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
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
                      height: 40.0,
                      width: 40.0,
                      alignment: Alignment.center,
                      child: Container(
                        child: Icon(Icons.search, color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: sections.asMap().entries.map((entry) {
                final sectionIndex = entry.key;
                final section = entry.value;
                final firstLetter = section['title']![0];
                final backgroundColor = generateRandomColor(firstLetter);
                return Card(
                  elevation: 2.0,
                  margin: const EdgeInsets.only(top: 8, left: 5, right: 5),
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: backgroundColor.withOpacity(0.1),
                          child: Text(
                            firstLetter,
                            style: TextStyle(
                                color: backgroundColor,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          section['title']!,
                          style: TextStyle(
                              color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(
                      _isTileExpanded[sectionIndex] ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
                      color: Color(0xFF4E74F9),
                    ),
                    onExpansionChanged: (bool expanded) {
                      setState(() {
                        _isTileExpanded[sectionIndex] = expanded;
                      });
                    },
                    children: (section['links'] as List<Map<String, String>>).map((link) {
                      return buildPdfCard(link['title']!, link['pdfPath']!, sectionIndex);
                    }).toList(),
                  ),
                );
              }).toList(),
            )

            // Column(
            //   children: sections.asMap().entries.map((entry) {
            //     final sectionIndex = entry.key;
            //     final section = entry.value;
            //     final firstLetter = section['title']![0];
            //     final backgroundColor = generateRandomColor(firstLetter);
            //     return Card(
            //       elevation: 2.0,
            //       margin: const EdgeInsets.only(top: 8, left: 5, right: 5),
            //       child: ExpansionTile(
            //         title: Row(
            //           children: [
            //             CircleAvatar(
            //               backgroundColor: backgroundColor.withOpacity(0.1),
            //               child: Text(
            //                 firstLetter,
            //                 style: TextStyle(
            //                   color: backgroundColor,
            //                   fontWeight: FontWeight.bold
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 16),
            //             Text(section['title']!),
            //           ],
            //         ),
            //         trailing: Icon(
            //           _isTileExpanded[sectionIndex] ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
            //           color: Color(0xFF4E74F9),
            //         ),
            //         onExpansionChanged: (bool expanded) {
            //           setState(() {
            //             _isTileExpanded[sectionIndex] = expanded;
            //           });
            //         },
            //         children: (section['links'] as List<Map<String, String>>).map((link) {
            //           return buildPdfCard(link['title']!, link['pdfPath']!, sectionIndex);
            //         }).toList(),
            //       ),
            //     );
            //   }).toList(),
            //
            // ),
          ],
        ),
      ),
    );
  }
}