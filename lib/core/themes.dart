import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
      bodyMedium: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
      titleLarge: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red,
      titleTextStyle: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
      bodyMedium: GoogleFonts.poppins(fontSize: 16, color: Colors.white70),
      titleLarge: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red.shade900,
      titleTextStyle: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
