import 'package:flutter/material.dart';

import 'models/post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          child: Image.network(post.imageUrl),
          borderRadius: BorderRadius.circular(10.0),
        ),
        const SizedBox(height: 8.0),
        Text(
          post.username,
          style: Theme.of(context).textTheme.headline,
        ),
        const SizedBox(height: 8.0),
        Text(
          post.text,
          style: Theme.of(context).textTheme.body1,
        ),
      ],
    );
  }
}
