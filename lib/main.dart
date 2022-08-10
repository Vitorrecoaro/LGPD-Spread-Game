import 'package:flutter/material.dart';
import 'package:lgpd_spread_game/common/tutorial_cards.dart';
import 'package:lgpd_spread_game/pages/question_page.dart';
import 'package:lgpd_spread_game/pages/start_page.dart';
import 'common/list_cards_class.dart';
import 'common/tutorial_cards.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/homePage': (BuildContext context) => StartPage(),
        '/tutorialPage': ((context) => QuestionPage(
              list: ListCards(listTutorialCards),
            )),
      },
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
              surface: Color(0xFF7E8C4A),
              onSurface: Colors.white),
          iconTheme: const IconThemeData(
            color: Color(0xFF305766),
          ),
          fontFamily: 'MedievalSharp'),
      home: StartPage(),
    ),
  );
}
