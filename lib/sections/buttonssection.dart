import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  final Widget button1;
  final Widget button2;
  final Widget button3;

  const ButtonSection({
    super.key,
    required this.button1,
    required this.button2,
    required this.button3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button1,
          const VerticalDivider(
            thickness: 2,
          ),
          button2,
          const VerticalDivider(
            thickness: 2,
          ),
          button3,
        ],
      ),
    );
  }
}
