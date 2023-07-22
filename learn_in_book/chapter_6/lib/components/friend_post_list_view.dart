import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class FrinedPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  const FrinedPostListView({super.key, required this.friendPosts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Social Chefs 👩‍🍳',
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16.0),
          ListView.separated(
            // primary: false,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: friendPosts.length,
            itemBuilder: (context, index) {
              final post = friendPosts[index];
              return FriendPostTile(post: post);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16.0);
            },
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
