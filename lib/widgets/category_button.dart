import 'package:flutter/material.dart';
class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 10.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF4E74F9).withOpacity(0.7),
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF4E74F9).withOpacity(0.5),
                spreadRadius: 0.0,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}