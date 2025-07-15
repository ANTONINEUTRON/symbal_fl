import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/auth/ui/pages/create_account_page.dart';
import 'package:symbal_fl/features/play/ui/pages/list_games_page.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            ListGamesPage(),
            //
            // Profile Page
            _isSignedIn?
            ProfilePage():CreateAccountPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreateGameRoute());
        },
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
