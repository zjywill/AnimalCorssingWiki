import 'package:animalcorssingwiki/bug/state.dart';
import 'package:animalcorssingwiki/fish/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';

Reducer<BugsScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<BugsScreenState>>{
      FishAdapterAction.action: _onAction,
    },
  );
}

BugsScreenState _onAction(BugsScreenState state, Action action) {
  final BugsScreenState newState = state.clone();
  return newState;
}
