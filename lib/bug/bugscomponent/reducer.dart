import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BugItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<BugItemState>>{},
  );
}

BugItemState _onAction(BugItemState state, Action action) {
  final BugItemState newState = state.clone();
  return newState;
}
