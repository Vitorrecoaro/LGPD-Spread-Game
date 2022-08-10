import '../components/draggable_card_widget.dart';

class ListCards {
  List<DraggableCardWidget> cards;
  int? lastOption;

  ListCards(this.cards);

  updateList() {
    if (cards.isNotEmpty) {
      lastOption = cards.last.answer;
      cards.removeLast();
      return cards;
    }
  }

  List<DraggableCardWidget> get listOfCards {
    return cards;
  }

  int? get answer {
    return lastOption;
  }

  set setLastOption(lastOption) {
    this.lastOption = lastOption;
  }

  set setListOfCards(cards) {
    this.cards = cards;
  }
}
