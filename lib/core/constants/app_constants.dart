
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const String appName = 'Symbal';

  static ThemeData appTheme = ThemeData(
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
      );
      
}
