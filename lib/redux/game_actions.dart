import '../common/list_cards_class.dart';

// Action for update cards on game state.
class UpdateCards {}

// Action for set new cards on game state.
class SetCards {
  final ListCards cards;

  SetCards(this.cards);

  ListCards get getCards => cards;
}

// Action for register user on game.
class SetUser {
  final String userName;

  SetUser(this.userName);

  String get getUser => userName;
}
