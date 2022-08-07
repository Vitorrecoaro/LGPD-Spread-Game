import 'package:flutter/material.dart';
import 'package:lgpd_spread_game/pages/question_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xFF1C3640),
              onPrimary: Colors.white,
              secondary: Color(0xFF53736D),
              onSecondary: Colors.black,
              error: Color(0xFFD9043D),
              onError: Colors.white,
              background: Color(0xFFD9CCB4),
              onBackground: Color(0xFF262118),
              surface: Color(0xFF95A658),
              onSurface: Colors.white),
          iconTheme: const IconThemeData(
            color: Color(0xFF305766),
          ),
          fontFamily: 'MedievalSharp'),
      home: const QuestionPage(),
    ),
  );
}
