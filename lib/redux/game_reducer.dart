import 'package:lgpd_spread_game/redux/game_actions.dart';
import 'package:lgpd_spread_game/redux/game_state.dart';

GameState gameReducer(GameState prevState, action) {
  switch (action) {
    case (UpdateCards):
      return GameState(prevState.player, prevState.actualCards.updateList());
    case (SetCards):
      return GameState(prevState.player, action.getCards);
    case (SetUser):
      return GameState(action.getUser, prevState.actualCards);
    default:
      return GameState(prevState.player, prevState.actualCards);
  }
}
