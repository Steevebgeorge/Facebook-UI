import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add your Story',
            story: mohanlal,
            avatar: mohanlal,
            createStoryIcon: true,
            displayAvatarBorder: true,
          ),
          StoryCard(
            labelText: "kalyani",
            story: kalyaniStory,
            avatar: kalyani3,
            createStoryIcon: false,
            displayAvatarBorder: true,
          ),
          StoryCard(
            labelText: "Ar Rahman",
            story: arrahmanStory,
            avatar: arrahman,
            createStoryIcon: false,
            displayAvatarBorder: true,
          ),
          StoryCard(
            labelText: "Bachan",
            story: bachanStory,
            avatar: bachan,
            createStoryIcon: false,
            displayAvatarBorder: true,
          ),
          StoryCard(
            labelText: "PrithviRaj",
            story: prithviStory,
            avatar: prithvi,
            createStoryIcon: false,
            displayAvatarBorder: true,
          ),
        ],
      ),
    );
  }
}
