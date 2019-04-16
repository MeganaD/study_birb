import 'package:flutter/material.dart';

import 'models/post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  const PostItem(this.post);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100.0,
        child: Center(
          child: Text(post.username),
        ),
      ),
    );
  }
}