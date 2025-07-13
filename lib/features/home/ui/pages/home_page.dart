import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/features/home/data/datasources/dummy_data.dart';
import 'package:symbal_fl/features/home/ui/widgets/game_story_card.dart';
import 'package:symbal_fl/features/profile/ui/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  int _pageControllerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            Scaffold(
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
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ),
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
            ),
            ProfilePage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.black87,//Theme.of(context).colorScheme.onPrimaryFixed,
        buttonBackgroundColor:  Theme.of(context).colorScheme.secondary,
        items: const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.person_4_rounded, color: Colors.white),
        ],
        height: 55,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
