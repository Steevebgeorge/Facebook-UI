import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularbutton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryIcon;
  final bool displayAvatarBorder;

  const StoryCard({
    super.key,
    required this.labelText,
    required this.story,
    required this.avatar,
    this.createStoryIcon = false,
    this.displayAvatarBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 12, bottom: 12, left: 5, right: 5),
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 2,
                left: 2,
                child: createStoryIcon
                    ? Circularbutton(
                        buttonicon: Icons.add,
                        buttonAction: () {
                          print('story button pressed: ');
                        },
                        buttonColor: Colors.blue,
                      )
                    : Avatar(
                        displayName: avatar,
                        displayStatus: false,
                        displayAvatarBorder: displayAvatarBorder,
                      )),
            Positioned(
              bottom: 2,
              left: 15,
              child: Text(
                labelText,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
