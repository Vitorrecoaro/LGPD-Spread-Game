import '../common/list_cards_class.dart';

class GameState {
  final String player;
  final ListCards actualCards;

  GameState(this.player, this.actualCards);

  GameState.initialState()
      : player = '',
        actualCards = ListCards([]);
}
