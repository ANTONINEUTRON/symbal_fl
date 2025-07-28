import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/constants/app_constants.dart';
import 'package:symbal_fl/core/extensions/widget_helpers.dart';
import 'package:symbal_fl/features/app/ui/cubits/app_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_state.dart';
import 'package:symbal_fl/features/auth/ui/widgets/create_account_tab.dart';
import 'package:symbal_fl/features/auth/ui/widgets/login_tab.dart';
import 'package:symbal_fl/gen/assets.gen.dart';
@RoutePage()
class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    var authCubit = context.watch<AuthCubit>();
    var appCubit = context.watch<AppCubit>();

    switch (authCubit.state.status) {
      case AuthStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case AuthStatus.error:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          appCubit.setErrorMessage(authCubit.state.errorMessage);
        });
        return const SizedBox.shrink();
      case AuthStatus.authenticated:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // context.router.replaceNamed(AppConstants.homeRoute);
          appCubit.setAlertMessage("Welcome Back, ${authCubit.state.user?.name ?? authCubit.state.user?.email}");
        });
        return const SizedBox.shrink();
      case AuthStatus.passwordReset:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          appCubit.setErrorMessage("Password reset email sent");
        });
        return const SizedBox.shrink();
      default:
        break;
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                // Logo Section
                Assets.brand.symbalLogo.image(
                  height: 60,
                  width: 60,
                ),
                Text(
                  AppConstants.appName,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Text(
                  'Have fun playing while scrolling',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ).addSpacing(bottom: 8),
            
                // Toggle Between Login and Create Account
                 TabBar(
                  indicatorColor: Theme.of(context).colorScheme.tertiary,
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFB2B2B2),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Log in',
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Create Account',
                      ),
                    )
                  ],
                ).addSpacing(bottom: 24),
            
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: const TabBarView(
                    children: [
                      LoginTab(),
                      CreateAccountTab(),
                    ],
                  ),
                )
              ],
            ).addSpacing(horizontal: 16),
          ),
        ),
      ),
    );
  }
}
