import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:symbal_fl/core/constants/app_constants.dart';
import 'package:symbal_fl/core/route/app_route.dart';
import 'package:symbal_fl/features/app/cubits/app_cubit.dart';
import 'package:symbal_fl/features/auth/data/repository/supabase_auth_repository.dart';
import 'package:symbal_fl/features/auth/ui/cubits/auth_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/create_game_cubit.dart';
import 'package:symbal_fl/features/game/ui/cubits/play_game_cubit.dart';
import 'package:symbal_fl/features/profile/data/repositories/supabase_profile_repository.dart';
import 'package:symbal_fl/features/profile/ui/cubits/profile_cubit.dart';

final _appRoute = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => SupabaseAuthRepository()),
        RepositoryProvider(create: (context) => SupabaseProfileRepository(),)
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit(
              authRepository: context.read<SupabaseAuthRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(
              authRepository: context.read<SupabaseAuthRepository>(),
              profileRepository: context.read<SupabaseProfileRepository>(),
            ),
          ),
          BlocProvider(create: (context) => AppCubit()),
          BlocProvider(create: (context) => GameCubit()),
          BlocProvider(create: (context) => CreateGameCubit()),
        ],
        child: MaterialApp.router(
          title: AppConstants.appName,
          theme: AppConstants.appTheme,
          debugShowCheckedModeBanner: false,
          routerConfig: _appRoute.config(),
        ),
      ),
    );
  }
}
