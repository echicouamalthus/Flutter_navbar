import 'package:flutter/material.dart';
import 'package:flutter_navbar/Components/MyContentPage.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.red[100],
      body: MyContentPage(text: 'Likes'),
    );
  }
}