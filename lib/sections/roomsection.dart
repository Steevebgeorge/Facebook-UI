import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(displayName: mohanlal, displayStatus: true),
          Avatar(displayName: prithvi, displayStatus: true),
          Avatar(displayName: kalyani3, displayStatus: true),
          Avatar(displayName: arrahman, displayStatus: true),
          Avatar(displayName: bachan, displayStatus: true),
          Avatar(displayName: pranav, displayStatus: true),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          side:
              MaterialStateProperty.all(const BorderSide(color: Colors.purple)),
        ),
        onPressed: () {
          print("create room icon pressed");
        },
        icon: Icon(
          Icons.video_chat_sharp,
          color: Colors.purpleAccent[800],
        ),
        label: Text(
          'Create \nRoom',
          style: TextStyle(color: Colors.purpleAccent[800]),
        ),
      ),
    );
  }
}
