import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:symbal_fl/core/constants/app_constants.dart';
import 'package:symbal_fl/core/route/app_route.dart';

final _appRoute = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MaterialApp.router(
      title: AppConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFCC00FF),
          secondary: Color(0xFF660080),
          tertiary: const Color(0xFFFF8C00)
        ).copyWith(),
        useMaterial3: true,
        textTheme: GoogleFonts.dmMonoTextTheme(),
        scaffoldBackgroundColor: Color(0xFF1A1A2E),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.white,
          tileColor: Color(0xFF16213E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
          )
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color(0xFF16213E),
        ),
        dividerColor: Colors.grey.shade300
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _appRoute.config(),
    );
  }
}
