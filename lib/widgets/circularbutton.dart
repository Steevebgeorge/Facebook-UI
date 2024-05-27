import 'package:flutter/material.dart';

class Circularbutton extends StatelessWidget {
  final IconData buttonicon;
  final void Function() buttonAction;
  final Color buttonColor;

  const Circularbutton({
    super.key,
    required this.buttonicon,
    required this.buttonAction,
    this.buttonColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
          icon: Icon(
            buttonicon,
            color: buttonColor,
            size: 20,
          ),
          onPressed: buttonAction),
    );
  }
}
