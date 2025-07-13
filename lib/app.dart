import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:symbal_fl/core/constants/app_constants.dart';
import 'package:symbal_fl/features/home/ui/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return MaterialApp(
      title: AppConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFCC00FF),
          secondary: Color(0xFF660080),
          tertiary: const Color(0xFFFF8C00),
        ).copyWith(),
        useMaterial3: true,
        textTheme: GoogleFonts.dmMonoTextTheme().copyWith(),
        scaffoldBackgroundColor: Color(0xFF1A1A2E),
        
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
