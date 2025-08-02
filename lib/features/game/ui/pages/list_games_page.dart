import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/home/data/datasources/dummy_data.dart';
import 'package:symbal_fl/features/home/ui/widgets/game_story_card.dart';
import 'package:symbal_fl/features/profile/data/models/app_user.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';

@RoutePage()
class ListGamesPage extends StatefulWidget {
  const ListGamesPage({super.key});

  @override
  State<ListGamesPage> createState() => _ListGamesPageState();
}

class _ListGamesPageState extends State<ListGamesPage> {
  final PageController _pageController = PageController();
  int _pageControllerIndex = 0;
  bool _hasAnimated = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startBounceAnimation();
    });
  }

  void _startBounceAnimation() async {
    if (_hasAnimated) return;
    _hasAnimated = true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    AppUser? profile = context.read<ProfileCubit>().state.userProfile;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Colors.white,
        title: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          label: Text('| ${profile?.symBalance ?? 0} SYM'),
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
      body:
          PageView.builder(
            controller: _pageController,
            itemCount: DummyGameStories.stories.length,
            onPageChanged: (index) {
              setState(() {
                _pageControllerIndex = index;
              });
            },
            pageSnapping: true,
            scrollBehavior: MaterialScrollBehavior(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final gameStory = DummyGameStories.stories[index];
              return GameStoryCard(
                gameStory: gameStory,
                isActive: index == _pageControllerIndex,
              );
            },
          ).animate().custom(
            duration: 1800.ms, // Total duration for 3 bounces
            builder: (context, value, child) {
              // Create a bounce effect that goes up and down 3 times
              double bounceValue = 0;

              if (value <= 1.0) {
                // Create 3 complete bounce cycles
                double cycleProgress = (value * 3) % 1.0;
                bounceValue = -20 * (1 - (2 * cycleProgress - 1).abs());
              }

              return Transform.translate(
                offset: Offset(0, bounceValue),
                child: child,
              );
            },
          ),
    );
  }
}
