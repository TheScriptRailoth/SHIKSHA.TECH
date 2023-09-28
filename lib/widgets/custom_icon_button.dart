import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
  final ImageProvider<Object> image;
  final String text;

  CustomIconButton({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(
          image,
          size: 24, // Adjust the size as needed
          color: Colors.grey, // Customize the icon color
        ),
        SizedBox(height: 4), // Adjust the spacing between image and text
        Text(
          text,
          style: TextStyle(
            color: Colors.grey, // Customize the text color
          ),
        ),
      ],
    );
  }
}