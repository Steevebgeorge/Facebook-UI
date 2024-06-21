import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayName;
  final bool displayStatus;
  final bool displayAvatarBorder;

  const Avatar({
    super.key,
    required this.displayName,
    required this.displayStatus,
    this.displayAvatarBorder = false,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayAvatarBorder == true
                ? Border.all(color: Colors.blueAccent, width: 3)
                : const Border(),
          ),
          padding: const EdgeInsets.only(right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(110),
            child: Image.asset(
              displayName,
              width: 50,
              height: 50,
            ),
          ),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 2,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            : const SizedBox()
      ],
    );
  }
}
