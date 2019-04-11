import 'package:flutter/material.dart';
import 'post_item.dart';
import 'no_content.dart';

class PostsList extends StatelessWidget {
  final Stream<List<int>> posts;
  const PostsList(this.posts);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<int>>(
      stream: posts,
      builder: (BuildContext context, AsyncSnapshot<List<int>> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Text('Loading...');
          default:
            if (snapshot.data.isEmpty) {
              return const NoContent();
            }
            return _itemList(snapshot.data);
        }
      },
    );
  }

  ListView _itemList(List<int> items) {
    return ListView(
      children: items.map((int index) {
        return const PostItem();
      }).toList(),
    );
  }
}