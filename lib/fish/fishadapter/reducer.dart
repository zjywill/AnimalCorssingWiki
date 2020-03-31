import 'package:animalcorssingwiki/fish/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';

Reducer<FishScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishScreenState>>{
      FishAdapterAction.action: _onAction,
    },
  );
}

FishScreenState _onAction(FishScreenState state, Action action) {
  final FishScreenState newState = state.clone();
  return newState;
}
