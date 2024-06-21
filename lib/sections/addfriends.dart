import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestioncard.dart';
import 'package:flutter/material.dart';

class FriendSuggestionsContainer extends StatelessWidget {
  const FriendSuggestionsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          const ListTile(
            title: Text("People you may know"),
            trailing: Icon(Icons.more_horiz),
          ),
          SizedBox(
            width: double.infinity,
            height: 440,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  imageName: mammotty,
                  mutualFriendCount: 35,
                  titleName: "Mammooty",
                ),
                SuggestionCard(
                  imageName: nivinpauly,
                  mutualFriendCount: 26,
                  titleName: "Nivin Pauly",
                ),
                SuggestionCard(
                  imageName: aju,
                  mutualFriendCount: 20,
                  titleName: "Aju Vargeese",
                ),
                SuggestionCard(
                  imageName: neslan,
                  mutualFriendCount: 10,
                  titleName: "Naslen",
                ),
                SuggestionCard(
                  imageName: surya,
                  mutualFriendCount: 10,
                  titleName: "Surya",
                ),
                SuggestionCard(
                  imageName: tovino,
                  mutualFriendCount: 10,
                  titleName: "Tovino Thomas",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
