import 'package:flutter/material.dart';

Widget buttonFn({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonfunction,
  required Color buttonCColor,
  required Color buttonIconColor,
}) {
  return TextButton(
    onPressed: buttonfunction,
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          buttonIcon,
          color: buttonIconColor,
        ),
        const SizedBox(width: 8),
        Text(
          buttonText,
          style: TextStyle(color: buttonCColor),
        ),
      ],
    ),
  );
}
