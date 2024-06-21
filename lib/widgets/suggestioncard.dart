import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String imageName;
  final int mutualFriendCount;
  final String titleName;
  const SuggestionCard(
      {super.key,
      required this.imageName,
      required this.mutualFriendCount,
      required this.titleName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionDetails(),
          imageWidget(),
        ],
      ),
    );
  }

  Widget imageWidget() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Image.asset(
          imageName,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
        left: 0,
        right: 0,
        top: 301,
        bottom: 0,
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  titleName,
                  style: const TextStyle(fontSize: 17),
                ),
                subtitle: Text(
                  "$mutualFriendCount Mutual Friends",
                  style: const TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              buttons()
            ],
          ),
        ));
  }

  Widget buttons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {},
              child: const Text(
                "Add Friend",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: const Text(
                "Remove",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
