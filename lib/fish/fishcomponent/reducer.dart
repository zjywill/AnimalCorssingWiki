import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FishItemState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishItemState>>{},
  );
}

FishItemState _onAction(FishItemState state, Action action) {
  final FishItemState newState = state.clone();
  return newState;
}
