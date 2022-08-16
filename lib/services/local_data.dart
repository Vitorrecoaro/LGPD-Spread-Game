import 'dart:io';

import 'package:lgpd_spread_game/common/cards.dart';
import 'package:lgpd_spread_game/getX/game_controller.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';

class LocalStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/LGPD_Save.txt');
  }

  Map<String, dynamic> mapGameController(GameController ctr) {
    return {
      'player': ctr.player,
      'location': ctr.location,
      'actualCards': ctr.actualCards.keys,
      'correctCards': ctr.correctCards.keys,
      'cassandraCards': ctr.cassandraCards.keys,
      'libraryCards': ctr.libraryCards.keys,
      'lastAnswer': ctr.lastAnswer,
      'lastCorrectAnswer': ctr.lastCorrectAnswer,
      'progress': ctr.progress,
      'showProgress': ctr.showProgress,
      'showMap': ctr.showMap,
    };
  }

  void setGameController(GameController ctr, Map<String, dynamic> json) {
    ctr.player = json['player'];
    ctr.location = json['location'];
    ctr.lastAnswer = json['lastAnswer'];
    ctr.lastCorrectAnswer = json['lastCorrectAnswer'];
    ctr.progress = json['progress'];
    ctr.showProgress = json['showProgress'];
    ctr.showMap = json['showMap'];
  }

  // void saveGame(GameController ctr) async {
  //   final file = await _localFile;
  //   final String jsonEncoded = jsonEncode(mapGameController(ctr));
  //   file.writeAsString(jsonEncoded);
  // }

  // Future loadGame(GameController ctr) async {
  //   final file = await _localFile;
  //   try {
  //     final String strFromFile = file.readAsStringSync();
  //     Map<String, dynamic> json = jsonDecode(strFromFile);
  //     print(json['actualCards']);
  //     setGameController(ctr, json);
  //   } catch (e) {
  //     print('Error $e');
  //   }
  // }
}
