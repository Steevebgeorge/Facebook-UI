// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonicon;
  final void Function() buttonAction;

  const AppBarButton({
    super.key,
    required this.buttonicon,
    required this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(
            buttonicon,
            color: Colors.black,
            size: 20,
          ),
          onPressed: buttonAction),
    );
  }
}
