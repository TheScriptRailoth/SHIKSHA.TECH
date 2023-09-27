import 'package:flutter/material.dart';
class AddPostorAsk extends StatefulWidget {
  const AddPostorAsk({super.key});

  @override
  State<AddPostorAsk> createState() => _AddPostorAskState();
}

class _AddPostorAskState extends State<AddPostorAsk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      child: TextButton(
                        onPressed: () {
                          // Add your action here for the first button
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.question_mark_rounded, color: Color(0xFF4E74F9),),
                              SizedBox(width: 10),
                              Text("Ask", style: TextStyle(color: Color(0xFF4E74F9)),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      child: TextButton(
                        onPressed: () {
                          // Add your action here for the second button
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.post_add, color: Color(0xFF4E74F9),),
                            SizedBox(width: 10),
                            Text("Post", style: TextStyle(color: Color(0xFF4E74F9)),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
