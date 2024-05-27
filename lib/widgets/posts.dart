import 'package:facebook/sections/buttonssection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String postAvatarName;
  final String postedPersonName;
  final String postedTime;
  final bool showVerifiedBadge;
  final String postTitle;
  final String postName;
  final String postLikeCount;
  final String postCommentCount;
  final String postShareCount;

  const PostCard({
    super.key,
    required this.postAvatarName,
    required this.postedPersonName,
    required this.showVerifiedBadge,
    this.postedTime = "",
    required this.postTitle,
    required this.postName,
    required this.postLikeCount,
    required this.postCommentCount,
    required this.postShareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10)),
          postHeaderSection(),
          postTitlefn(),
          postImage(),
          postFooterSection(),
          const Divider(
            thickness: 1,
          ),
          ButtonSection(
            button1: buttonFn(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: const Color.fromARGB(255, 138, 131, 131),
                buttonIconColor: const Color.fromARGB(255, 138, 131, 131)),
            button2: buttonFn(
                buttonText: "Comments",
                buttonIcon: Icons.comment,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: const Color.fromARGB(255, 138, 131, 131),
                buttonIconColor: const Color.fromARGB(255, 138, 131, 131)),
            button3: buttonFn(
                buttonText: "Share",
                buttonIcon: Icons.share,
                buttonfunction: () {
                  print("button pressed");
                },
                buttonCColor: const Color.fromARGB(255, 138, 131, 131),
                buttonIconColor: const Color.fromARGB(255, 138, 131, 131)),
          )
        ],
      ),
    );
  }

  Widget postFooterSection() {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.thumb_up,
                  size: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                postLikeCount,
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
          ),
          Text("$postCommentCount comments"),
          Text("$postShareCount shares"),
          IconButton(
            onPressed: () {
              print("dropdown button pressed");
            },
            icon: const Icon(Icons.arrow_drop_down),
          )
        ],
      ),
    );
  }

  Widget postImage() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postName),
    );
  }

  Widget postTitlefn() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget postHeaderSection() {
    return ListTile(
      leading: Avatar(displayName: postAvatarName, displayStatus: false),
      title: Row(
        children: [
          Text(
            postedPersonName,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 5,
          ),
          showVerifiedBadge == true
              ? Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  ),
                )
              : const SizedBox()
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('more icon pressed');
        },
        icon: const Icon(Icons.more_horiz),
      ),
      subtitle: Row(
        children: [
          Text(postedTime),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.public,
            size: 15,
          )
        ],
      ),
    );
  }
}
