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
          seedColor: Colors.orange,
          secondary: const Color(0xFFE6A479),
          tertiary: const Color(0xFF723412),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.meriendaTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
