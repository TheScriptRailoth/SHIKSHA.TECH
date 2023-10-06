import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chandrayaan–3'),
        backgroundColor: Color(0XFF4E74F9),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Title
              Text(
                'Chandrayaan–3: Exploring the Moon',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Space above Image
              SizedBox(height: 20.0),

              // Local Image
              Image.asset(
                'images/chand.png',
                height: 200.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Date and Time of Publish with Icons
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 5.0),
                  Text(
                    'Published - October 6, 2023 at 2:30 PM',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              // Like, Comment, and Share Icons
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                          child: Icon(
                            CupertinoIcons.hand_thumbsup_fill,
                            color: isLiked ? Color(0XFF4E74F9) : Colors.grey,
                            size: 24.0,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'Like',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {
                          // Implement comment functionality
                        },
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Comment',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          // Implement share functionality
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Divider(color: Colors.black87), // Horizontal line after Like, Comment, and Share

              // Article Content
              SizedBox(height: 10.0),
              Text(
                'Chandrayaan–3 is the third lunar exploration mission developed by the Indian Space Research Organisation (ISRO). It is a follow-up to the Chandrayaan-1 and Chandrayaan-2 missions.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 1
              SizedBox(height: 20.0),
              Text(
                'Mission Overview',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 1 Content
              SizedBox(height: 10.0),
              Text(
                'The Chandrayaan-3 mission consists of a lander and a rover. The lander is expected to soft-land on the lunar surface in the south polar region in early 2024. The rover will then be deployed from the lander to explore the lunar surface and conduct scientific experiments.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 2
              SizedBox(height: 20.0),
              Text(
                'Scientific Objectives',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 2 Content
              SizedBox(height: 10.0),
              Text(
                'The Chandrayaan-3 mission has several scientific objectives, including:',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              BulletPoint('Studying the composition and structure of the lunar surface'),
              BulletPoint('Mapping the lunar surface'),
              BulletPoint('Searching for water ice and other resources on the Moon'),
              BulletPoint('Studying the lunar atmosphere and exosphere'),
              BulletPoint('Studying the Moon\'s magnetic field and gravity'),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 3
              SizedBox(height: 20.0),
              Text(
                'Additional Details',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 3 Content
              SizedBox(height: 10.0),
              BulletPoint('The lander is based on the design of the Vikram lander from the Chandrayaan-2 mission. However, it has been modified to improve its reliability and performance.'),
              BulletPoint('The rover is a six-wheeled vehicle that is capable of carrying up to 15 kg of scientific instruments.'),
              BulletPoint('The Chandrayaan-3 mission will be launched using the LVM3 rocket, which is India\'s most powerful rocket to date.'),
              BulletPoint('The launch is scheduled for early 2024.'),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 4
              SizedBox(height: 20.0),
              Text(
                'Payload',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 4 Content
              SizedBox(height: 10.0),
              Text(
                'The Chandrayaan-3 mission will carry a number of scientific instruments to achieve its objectives. These instruments include:',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              BulletPoint('Terrain Mapping Camera-2 (TMC-2): This camera will be used to create a 3D map of the lunar surface.'),
              BulletPoint('Chandrayaan-3 Surface Plasma Experiment (CSPEX): This instrument will study the composition and dynamics of the lunar plasma environment.'),
              BulletPoint('Lunar Seismic Experiment (LSE): This instrument will measure seismic activity on the Moon.'),
              BulletPoint('Chandrayaan-3 Langmuir Probe (CLP): This instrument will measure the electrical properties of the lunar plasma environment.'),
              BulletPoint('Chandrayaan-3 Neutral Mass Spectrometer (CNMS): This instrument will measure the composition of the lunar neutral atmosphere.'),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 5
              SizedBox(height: 20.0),
              Text(
                'Launch and Landing',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 5 Content
              SizedBox(height: 10.0),
              Text(
                'The Chandrayaan-3 mission is scheduled to launch in early 2024 using the LVM3 rocket. The mission is expected to take approximately 15 days to reach the Moon.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              BulletPoint('The lander will soft-land on the lunar surface in the south polar region.'),
              BulletPoint('The rover will then be deployed from the lander to explore the lunar surface and conduct scientific experiments.'),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 6
              SizedBox(height: 20.0),
              Text(
                'Significance',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black87), // Slightly darker line

              // Subheading 6 Content
              SizedBox(height: 10.0),
              Text(
                'The Chandrayaan-3 mission is a significant undertaking for ISRO and represents India\'s growing ambitions in space exploration. If successful, it will make India the fourth country to land a spacecraft on the Moon.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'The mission is also expected to provide valuable new insights into the Moon and its potential resources. This information will be useful for planning future lunar missions and for developing new technologies for space exploration.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget BulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• ', style: TextStyle(fontSize: 16.0)),
        Expanded(child: Text(text, style: TextStyle(fontSize: 16.0))),
      ],
    );
  }
}
