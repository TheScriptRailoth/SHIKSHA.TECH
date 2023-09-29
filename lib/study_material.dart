import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:url_launcher/url_launcher.dart';
class TopicListPage extends StatelessWidget {
  final List<Topic> topics = [
    Topic(
      name: 'Web Development',
      subtopics: [
        Subtopic(name: 'Basic Concepts', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp01.pdf'),
        Subtopic(name: 'Setting up a web Server', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp02.pdf'),
        Subtopic(name: 'Basic HTML', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp03.pdf'),
        Subtopic(name: 'HTML tables', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp04.pdf'),
        Subtopic(name: 'HTML Forms', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp05.pdf'),
        Subtopic(name: 'HTML iFrame', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp06.pdf'),
        Subtopic(name: 'XML', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp07.pdf'),
        Subtopic(name: 'Style Sheets', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp08.pdf'),
        Subtopic(name: 'Web Designs', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp09.pdf'),
        Subtopic(name: 'Internet Commerce', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp10.pdf'),
        Subtopic(name: 'JavaScript 1:Basic Scripting', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp11.pdf'),
        Subtopic(name: 'JavaScript 2:Event Handling', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp12.pdf'),
        Subtopic(name: 'JavaScript 3:Functions', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp13.pdf'),
        Subtopic(name: 'JavaScript 4:Objects and Arrays', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp14.pdf'),
        Subtopic(name: 'Interactive Images', pdfPath: 'https://www.cs.uct.ac.za/mit_notes/web_programming/pdfs/chp15.pdf'),
      ],
    ),
    Topic(
      name: 'App Development',
      subtopics: [
        Subtopic(name: 'IDE Setup', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Layouts', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Photo Frame', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Navigation Drawer', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Video Embedding', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Seekbar Methods', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'List Views', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Using APIs', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Splash Screen', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Cardviews', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Custom Notifications', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'Database', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'JSON', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Python',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Java',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'C',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'C++',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Artificial Intelligence',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Machine Learning',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Graphic Designing',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),

    Topic(
      name: 'BlockChain',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Augmented Reality',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Virtual Reality',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Unity Development',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    Topic(
      name: 'Operating Systems',
      subtopics: [
        Subtopic(name: 'Concept', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
        Subtopic(name: 'App development', pdfPath: 'https://www.techaheadcorp.com/wp-content/uploads/2019/10/mobile-application-development-guide-pdf.pdf'),
      ],
    ),
    // Add more topics with their subtopics as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics List'),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return ListTile(
            title: Text(topic.name),
            onTap: () {
              // Navigate to the SubtopicListPage for the selected topic
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubtopicListPage(topic: topic),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Topic {
  final String name;
  final List<Subtopic> subtopics;

  Topic({required this.name, required this.subtopics});
}

class Subtopic {
  final String name;
  final String pdfPath;

  Subtopic({required this.name, required this.pdfPath});
}

class SubtopicListPage extends StatelessWidget {
  final Topic topic;

  SubtopicListPage({required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subtopics for ${topic.name}'),
      ),
      body: ListView.builder(
        itemCount: topic.subtopics.length,
        itemBuilder: (context, index) {
          final subtopic = topic.subtopics[index];
          return ListTile(
            title: Text(subtopic.name),
            onTap: () {
              // Navigate to the PDF viewer page for the selected subtopic
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => PDFViewerPage(pdfPath: subtopic.pdfPath),
              ),
              );
              _launchURL(subtopic.pdfPath);
            },
          );
        },
      ),
    );
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


class TopicTile extends StatefulWidget {
  final Topic topic;

  TopicTile({required this.topic});

  @override
  _TopicTileState createState() => _TopicTileState();
}

class _TopicTileState extends State<TopicTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.topic.name),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
        if (isExpanded)
          Column(
            children: widget.topic.subtopics
                .map((subtopic) => SubtopicTile(subtopic: subtopic))
                .toList(),
          ),
      ],
    );
  }
}

class SubtopicTile extends StatelessWidget {
  final Subtopic subtopic;

  SubtopicTile({required this.subtopic});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(subtopic.name),
      onTap: () {
        // Navigate to the PDF viewer page for the selected subtopic
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PDFViewerPage(pdfPath: subtopic.pdfPath),
          ),
        );
        // You can also launch the URL here if needed
        //_launchURL(subtopic.pdfPath);
      },
    );
  }
}

class PDFViewerPage extends StatelessWidget {
  final String pdfPath;

  PDFViewerPage({required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topics List'),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          final topic = topics[index];
          return TopicTile(topic: topic);
        },
      ),
    );
  }
}