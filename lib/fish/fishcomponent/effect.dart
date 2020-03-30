import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FishItemState> buildEffect() {
  return combineEffects(<Object, Effect<FishItemState>>{
    FishItemAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FishItemState> ctx) {
}
