import 'package:get/get.dart';
import 'package:lgpd_spread_game/common/cards.dart';
import 'package:lgpd_spread_game/common/final_cards.dart';
import 'package:lgpd_spread_game/components/draggable_card_widget.dart';

class GameController extends GetxController {
  String player = '';
  String location = 'Tutorial';
  Map<int, DraggableCardWidget> actualCards = {};
  Map<int, DraggableCardWidget> correctCards = {};
  Map<int, DraggableCardWidget> cassandraCards = {};
  Map<int, DraggableCardWidget> libraryCards = {};
  int lastAnswer = -1;
  int lastCorrectAnswer = -1;
  double progress = 0;
  bool showProgress = false;
  bool showMap = false;

  void changeLocation(String loc) {
    actualCards.remove(99);
    if (loc != location && actualCards.length <= 1) {
      actualCards.remove(-1);
      switch (loc) {
        case ('Cassandra'):
          if (cassandraCards.length >= 3) {
            for (var key in List.from(cassandraCards.keys).sublist(0, 3)) {
              actualCards[key] = cassandraCards[key]!;
              cassandraCards.remove(key);
            }
          } else {
            actualCards.addEntries(cassandraCards.entries);
            cassandraCards = {};
          }
          actualCards[99] = (welcomeCassandra);
          break;
        case ('Library'):
          if (libraryCards.length >= 3) {
            for (var key in List.from(libraryCards.keys).sublist(0, 3)) {
              actualCards[key] = libraryCards[key]!;
              libraryCards.remove(key);
            }
          } else {
            actualCards.addEntries(libraryCards.entries);
            libraryCards = {};
          }
          actualCards[99] = (welcomeRomana);
          break;
      }
      location = loc;
    }
  }

  void setUser(String name) {
    player = name;
    update();
  }

  void setCardList(Map<int, DraggableCardWidget> cards) {
    actualCards = cards;
    update();
  }

  void updateCardList(int answer) {
    lastCorrectAnswer = actualCards.values.last.correctOption;
    lastAnswer = answer;

    if (actualCards.values.last.actionShowMap) {
      showMap = true;
    }
    if (actualCards.values.last.actionShowProgress) {
      showProgress = true;
    }

    // Score for player if is correct.
    if (lastAnswer == actualCards.values.last.correctOption &&
        actualCards.keys.last != 99) {
      progress += 0.10;
      correctCards[actualCards.keys.last] = (actualCards.values.last);
    } else if (actualCards.keys.last != 99) {
      switch (location) {
        case ('Library'):
          libraryCards[actualCards.keys.last] = (actualCards.values.last);
          break;
        case ('Cassandra'):
          cassandraCards[actualCards.keys.last] = (actualCards.values.last);
          break;
      }
    }
    actualCards.remove(actualCards.keys.last);
    if (actualCards.isEmpty) {
      switch (location) {
        case ('Cassandra'):
          actualCards[-1] = (finalCassandraCard);
          break;
        case ('Library'):
          actualCards[-1] = (finalLibraryCard);
          break;
      }
    }
    update();
  }
}
