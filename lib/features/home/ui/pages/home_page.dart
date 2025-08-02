import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:symbal_fl/core/route/app_route.gr.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';
import 'package:symbal_fl/features/app/cubits/app_state.dart';
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
    _alertTrigger();

    var authCubit = context.watch<AuthCubit>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ListGamesPage(),
          //
          // Profile Page
          authCubit.state.status == AuthStatus.authenticated
              ? ProfilePage()
              : AuthPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if not signed in, redirect to auth page and show alert
          if (authCubit.state.status != AuthStatus.authenticated) {
            _currentIndex = 1;
            
            context.read<AppCubit>().showAlertMessage(
              'You must be signed in to create a game.',
            );

            return;
          } else {
            context.router.push(CreateGameRoute());
          }
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
        height: 45,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  void _alertTrigger() {
    AppCubit appCubit = context.read<AppCubit>();
    AppState appState = appCubit.state;

    WidgetsBinding.instance.addPostFrameCallback((duration) {
      if (appState.errorMessage.isNotEmpty) {
        var message = appState.errorMessage;
        showToast(
          message,
          context: context,
          position: StyledToastPosition.top,
          duration: Duration(seconds: 10),
          backgroundColor: Colors.red.shade900,
          onDismiss: () {
            appCubit.reset();
          },
        );
      } else if (appState.alertMessage.isNotEmpty) {
        var message = appState.alertMessage;

        showToast(
          message,
          context: context,
          position: StyledToastPosition.top,
          duration: Duration(seconds: 10),
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          onDismiss: () {
            appCubit.reset();
          },
        );
      }
    });
  }
}
