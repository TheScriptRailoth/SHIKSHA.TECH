import 'package:flutter/material.dart';

class LikeIcon extends StatelessWidget {
  Future<int> tempFuture() async {
    return Future.delayed(Duration(seconds: 1));
  }
   bool liked=false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: (){
        liked=true;
      },icon: liked==false?Icon(Icons.favorite_border_outlined):Icon(Icons.favorite, color: Colors.red,)
    )
    );
  }
}