import 'package:flutter/material.dart';

class MyContentPage extends StatelessWidget {
  String text;
  MyContentPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
