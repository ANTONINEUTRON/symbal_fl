import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/app/ui/cubits/app_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_state.dart';
import 'package:symbal_fl/features/auth/ui/pages/auth_page.dart';
import 'package:symbal_fl/features/game/ui/pages/list_games_page.dart';
import 'package:symbal_fl/features/profile/ui/pages/profile_page.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    AppCubit appCubit = context.watch<AppCubit>();
    var appState = appCubit.state;
    WidgetsBinding.instance.addPostFrameCallback((duration) {
      if (appState.errorMessage.isNotEmpty) {
        var message = appState.errorMessage;

        showToast(
          message,
          context: context,
          duration: Duration(seconds: 10),
          backgroundColor: Colors.red.shade900,
        );

        appCubit.reset();
      } else if (appState.alertMessage.isNotEmpty) {
        var message = appState.alertMessage;

        showToast(
          message,
          context: context,
          duration: Duration(seconds: 10),
          backgroundColor: Theme.of(context).colorScheme.tertiary,
        );

        appCubit.reset();
      }
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            ListGamesPage(),
            //
            // Profile Page
            context.watch<AuthCubit>().state.status == AuthStatus.authenticated
                ? ProfilePage()
                : CreateAccountPage(),
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
        color: Colors.black87, //Theme.of(context).colorScheme.onPrimaryFixed,
        buttonBackgroundColor: Theme.of(context).colorScheme.secondary,
        items: const [
          Icon(Icons.home, color: Colors.white),
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
