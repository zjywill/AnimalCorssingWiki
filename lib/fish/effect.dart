import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FishScreenState> buildEffect() {
  return combineEffects(<Object, Effect<FishScreenState>>{
    Lifecycle.initState: _init,
    FishScreenAction.onRefresh: _onRefresh,
  });
}

void _init(Action action, Context<FishScreenState> ctx) {

}

void _onRefresh(Action action, Context<FishScreenState> ctx) {

}
