// TODO Implement this library.
import 'package:flutter/material.dart';
import '../models/post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  PostItem({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(post.imageUrl, fit: BoxFit.cover),
        ),
        ListTile(
          title: Text(post.caption),
        ),
      ],
    );
  }
}
