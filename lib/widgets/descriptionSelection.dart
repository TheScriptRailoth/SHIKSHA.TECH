import 'package:flutter/material.dart';
class DecriptionSelection extends StatelessWidget {
  const DecriptionSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Flutter is a free and open-source UI software development kit created by Google.It allows developers to create native mobile applications with a single codebase and programming language, making building both iOS and Android apps simpler and faster.1 Flutter is used to develop cross-platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows.2 It transforms the entire app development process, allowing developers to build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.3",
          style: TextStyle(color: Colors.black.withOpacity(0.6)),)
        ],
      ),
    );
  }
}
