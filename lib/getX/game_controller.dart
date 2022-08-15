import 'package:get/get.dart';
import 'package:lgpd_spread_game/common/cards.dart';
import 'package:lgpd_spread_game/common/final_cards.dart';
import 'package:lgpd_spread_game/components/draggable_card_widget.dart';

class GameController extends GetxController {
  String player = '';
  String location = 'Tutorial';
  List<DraggableCardWidget> actualCards = [];
  List<DraggableCardWidget> correctCards = [];
  List<DraggableCardWidget> cassandraCards = [];
  List<DraggableCardWidget> libraryCards = [];
  int lastAnswer = -1;
  int lastCorrectAnswer = -1;
  double progress = 0;
  bool showProgress = false;
  bool showMap = false;

  void changeLocation(String loc) {
    if (loc != location && actualCards.length <= 1) {
      switch (loc) {
        case ('Cassandra'):
          if (cassandraCards.length >= 3) {
            actualCards = List.from(cassandraCards.sublist(0, 3));
            cassandraCards.removeRange(0, 2);
          } else {
            actualCards = List.from(cassandraCards);
            cassandraCards = [];
          }
          actualCards.add(welcomeCassandra);
          break;
        case ('Library'):
          if (libraryCards.length >= 3) {
            actualCards = List.from(libraryCards.sublist(0, 3));
            libraryCards.removeRange(0, 2);
          } else {
            actualCards = List.from(libraryCards);
            libraryCards = [];
          }
          actualCards.add(welcomeRomana);
          break;
      }
      location = loc;
    }
  }

  void setUser(String name) {
    player = name;
    update();
  }

  void setCardList(List<DraggableCardWidget> cards) {
    actualCards = cards;
    update();
  }

  void updateCardList(int answer) {
    lastCorrectAnswer = actualCards.last.correctOption;
    lastAnswer = answer;

    if (actualCards.last.actionShowMap) {
      showMap = true;
    }
    if (actualCards.last.actionShowProgress) {
      showProgress = true;
    }

    // Score for player if is correct.
    if (lastAnswer == actualCards.last.correctOption) {
      progress += 0.05;
      correctCards.add(actualCards.removeLast());
    } else {
      switch (location) {
        case ('Biblioteca'):
          libraryCards.add(actualCards.removeLast());
          break;
        case ('Cassandra'):
          cassandraCards.add(actualCards.removeLast());
          break;
        default:
          actualCards.removeLast();
          break;
      }
    }
    if (actualCards.isEmpty) {
      switch (location) {
        case ('Cassandra'):
          actualCards.add(finalCassandraCard);
          break;
        case ('Library'):
          actualCards.add(finalLibraryCard);
          break;
        default:
          actualCards.add(finalCassandraCard);
          break;
      }
    }
    update();
  }
}
