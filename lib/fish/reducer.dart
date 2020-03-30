import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FishScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishScreenState>>{
      FishScreenAction.onPopulated: _onPopulated,
    },
  );
}

FishScreenState _onPopulated(FishScreenState state, Action action) {
  final FishScreenState newState = state.clone();
  return newState;
}
