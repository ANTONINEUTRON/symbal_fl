import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:symbal_fl/core/constants/app_constants.dart';
import 'package:symbal_fl/core/route/app_route.dart';
import 'package:symbal_fl/features/app/ui/cubits/app_cubit.dart';

final _appRoute = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppCubit()),
      ],
      child: AppInit(),
    );
  }
}

class AppInit extends StatelessWidget {
  const AppInit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp.router(
      title: AppConstants.appName,
      theme: AppConstants.appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRoute.config(),
    );
  }
}
