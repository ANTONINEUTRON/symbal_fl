import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/home/data/datasources/dummy_data.dart';
import 'package:symbal_fl/features/home/ui/widgets/game_story_card.dart';

@RoutePage()
class ListGamesPage extends StatefulWidget {
  const ListGamesPage({super.key});

  @override
  State<ListGamesPage> createState() => _ListGamesPageState();
}

class _ListGamesPageState extends State<ListGamesPage> {
  final PageController _pageController = PageController();
  int _pageControllerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.white,
        title: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          label: const Text('| 20 SYM'),
          icon: const Icon(Icons.games_rounded),
        ),
        actions: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: const Icon(Icons.search),
          ).addSpacing(right: 8.0),
        ],
      ),

      body: PageView.builder(
        controller: _pageController,
        itemCount: DummyGameStories.stories.length,
        onPageChanged: (index) {
          setState(() {
            _pageControllerIndex = index;
          });
        },
        pageSnapping: true,
        reverse: true,
        scrollBehavior: MaterialScrollBehavior(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final gameStory = DummyGameStories.stories[index];
          return GameStoryCard(
            gameStory: gameStory,
            isActive: index == _pageControllerIndex,
          );
        },
      ),
    );
  }
}
