import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lgpd_spread_game/common/cards.dart';
import 'package:lgpd_spread_game/common/tutorial_cards.dart';
import 'package:lgpd_spread_game/getX/game_controller.dart';
import 'package:lgpd_spread_game/pages/library_page.dart';
import 'package:lgpd_spread_game/pages/question_page.dart';
import 'package:lgpd_spread_game/pages/start_page.dart';
import 'package:lgpd_spread_game/services/local_data.dart';
import 'common/tutorial_cards.dart';

void main() async {
  final store = LocalStorage();
  final gameController = Get.put(GameController());
  // await store.loadGame(gameController);
  runApp(
    MaterialApp(
      routes: {
        '/homePage': (BuildContext context) => StartPage(),
        '/tutorialPage': ((context) {
          gameController.actualCards = listTutorialCards;
          gameController.cassandraCards = initialCardsCassandra;
          gameController.libraryCards = initialCardsRomana;
          return const QuestionPage();
        }),
        '/cassandraHome': ((context) {
          gameController.changeLocation('Cassandra');
          return const QuestionPage();
        }),
        '/library': ((context) {
          return LibraryPage();
        }),
        '/questionPage': ((context) => const QuestionPage())
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
