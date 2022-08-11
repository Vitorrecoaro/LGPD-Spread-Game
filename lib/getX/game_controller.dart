import 'package:get/get.dart';
import 'package:lgpd_spread_game/components/draggable_card_widget.dart';

class GameController extends GetxController {
  String player = '';
  List<DraggableCardWidget> actualCards = [];
  DraggableCardWidget? actualCard;
  int lastAnswer = -1;

  void setUser(String name) {
    player = name;
    update();
  }

  void setCardList(List<DraggableCardWidget> cards) {
    actualCards = cards;
    update();
  }

  void updateCardList(int answer) {
    actualCards.removeLast();
    lastAnswer = answer;
    update();
  }
}
