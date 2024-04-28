// TODO Implement this library.
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String username;

  StoryItem({required this.imageUrl, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(imageUrl),
          ),
          SizedBox(height: 4),
          Text(username),
        ],
      ),
    );
  }
}
