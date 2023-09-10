import 'package:flutter/material.dart';
class VideoSelection extends StatelessWidget {
  List videoList=[
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Setup Emulator on Windows',
    'Creating our First App'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videoList.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index==0? Color(0xFF4E74F9):Color(0xFF4E74F9).withOpacity(0.5),
              ),
              child: Icon(Icons.play_arrow_rounded, color: Colors.white,size: 30,),
            ),
            title: Text(videoList[index]),
            subtitle: Text("25min 56sec"),
          );
        }
    );
  }
}
