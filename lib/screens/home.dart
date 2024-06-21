// ignore_for_file: avoid_print

import 'package:facebook/assets.dart';
import 'package:facebook/sections/addfriends.dart';
import 'package:facebook/sections/buttonssection.dart';
import 'package:facebook/sections/roomsection.dart';
import 'package:facebook/sections/statussection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/widgets/button.dart';
import 'package:facebook/widgets/circularbutton.dart';
import 'package:facebook/widgets/posts.dart';
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
          Circularbutton(
            buttonicon: Icons.add_circle_outline_sharp,
            buttonAction: () {
              print('Search button pressed');
            },
          ),
          Circularbutton(
            buttonicon: Icons.search,
            buttonAction: () {
              print('Search button pressed');
            },
          ),
          Circularbutton(
            buttonicon: Icons.chat,
            buttonAction: () {
              print('chat button pressed');
            },
          )
        ],
      ),
      body: ListView(
        children: [
          const StatusSection(),
          Divider(
            thickness: 2,
            color: Colors.grey[300],
          ),
          ButtonSection(
            button1: buttonFn(
                buttonText: "live",
                buttonIcon: Icons.video_call,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: Colors.black,
                buttonIconColor: Colors.red),
            button2: buttonFn(
                buttonText: "Photos",
                buttonIcon: Icons.photo_library,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: Colors.black,
                buttonIconColor: Colors.green),
            button3: buttonFn(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: Colors.black,
                buttonIconColor: Colors.purple),
          ),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          const RoomSection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          const StorySection(),
          Divider(
            thickness: 10,
            color: Colors.grey[300],
          ),
          PostCard(
            postAvatarName: bachan,
            postedPersonName: "Amithah Bachan",
            postedTime: "5h",
            showVerifiedBadge: false,
            postTitle: "welcome",
            postName: bachanStory,
            postLikeCount: "20k",
            postCommentCount: "5k",
            postShareCount: "700",
          ),
          Divider(
            thickness: 8,
            color: Colors.grey[300],
          ),
          PostCard(
            postAvatarName: kalyani3,
            postedPersonName: "Kalyani Priyadarshan",
            showVerifiedBadge: true,
            postTitle: "Hey Guys",
            postName: kalyanipost1,
            postedTime: "6h",
            postLikeCount: "5k",
            postCommentCount: "500",
            postShareCount: "100",
          ),
          Divider(
            thickness: 8,
            color: Colors.grey[300],
          ),
          const FriendSuggestionsContainer(),
          Divider(
            thickness: 8,
            color: Colors.grey[300],
          ),
          PostCard(
              postAvatarName: pranav,
              postedPersonName: "Pranav Mohanlal",
              showVerifiedBadge: true,
              postTitle: "@Himachal pradesh",
              postName: pranavpost,
              postedTime: "5h",
              postLikeCount: "2k",
              postCommentCount: "1k",
              postShareCount: "20"),
          Divider(
            thickness: 8,
            color: Colors.grey[300],
          ),
          PostCard(
            postAvatarName: prithviraj,
            postedPersonName: "PrithviRaj Sukumaran",
            showVerifiedBadge: true,
            postTitle: "The Goat Life",
            postName: prithvi,
            postLikeCount: "20k",
            postCommentCount: "5k",
            postShareCount: "800",
            postedTime: "24h",
          ),
          Divider(
            thickness: 8,
            color: Colors.grey[300],
          ),
          PostCard(
            postAvatarName: arrahman,
            postedPersonName: "AR Rahman",
            showVerifiedBadge: true,
            postTitle: "",
            postName: arrahmanpost,
            postLikeCount: "6k",
            postCommentCount: "200",
            postShareCount: "50",
            postedTime: "2 days ago",
          )
        ],
      ),
    );
  }
}
