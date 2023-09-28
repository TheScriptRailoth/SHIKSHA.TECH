import 'package:flutter/material.dart';
class CommunityAsk extends StatefulWidget {
  const CommunityAsk({super.key});

  @override
  State<CommunityAsk> createState() => _CommunityAskState();
}

class _CommunityAskState extends State<CommunityAsk> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Text('')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
