import 'package:facebook/widgets/appBarButton.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
              color: Colors.blue[600],
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          AppBarButton(
            buttonicon: Icons.search,
            buttonAction: () {
              print('Search button pressed');
            },
          ),
          AppBarButton(
            buttonicon: Icons.chat,
            buttonAction: () {
              print('chat button pressed');
            },
          )
        ],
      ),
    );
  }
}
