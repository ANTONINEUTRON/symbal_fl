import 'package:auto_route/annotations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/auth/ui/pages/create_account_page.dart';
import 'package:symbal_fl/features/home/data/datasources/dummy_data.dart';
import 'package:symbal_fl/features/home/ui/widgets/game_story_card.dart';
import 'package:symbal_fl/features/play/ui/pages/play_page.dart';
import 'package:symbal_fl/features/profile/ui/pages/profile_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  bool _isSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            PlayPage(),
            //
            // Profile Page
            _isSignedIn?
            ProfilePage():CreateAccountPage(),
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
        buttonBackgroundColor: Theme.of(context).colorScheme.secondary,
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
