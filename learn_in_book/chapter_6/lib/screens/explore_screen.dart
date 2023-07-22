import '../components/friend_post_list_view.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatefulWidget {

  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late ScrollController _scrollController;
  void scrollLisener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      print("reach the bottom");
    }
    if (_scrollController.offset <= _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      print("reach the top");
    }
  }
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(scrollLisener);
  }
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }
  final mockService = MockFooderlichService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            children: [
              TodayRecipeListView(recipes: snapshot.data?.todayRecipes ?? []),
              const SizedBox(height: 16.0),
              FrinedPostListView(friendPosts: snapshot.data?.friendPosts ?? []),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
