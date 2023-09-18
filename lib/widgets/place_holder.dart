import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlaceHolder extends StatefulWidget {
  const PlaceHolder(
      {Key? key, required this.title, this.isSwitch = false})
      : super(key: key);
  final String title;
  final bool isSwitch;

  @override
  _PlaceHolderState createState() => _PlaceHolderState();
}

class _PlaceHolderState extends State<PlaceHolder> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.width * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          (widget.isSwitch)
              ? CupertinoSwitch(
            value: switchValue,
            activeColor: Color(0xFF4E74F9),
            onChanged: (bool newValue) {
              setState(() {
                switchValue = newValue;
              });
            },
          )
              : Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}