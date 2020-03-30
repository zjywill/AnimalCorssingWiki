import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeScreenState>>{
    },
  );
}

HomeScreenState _onAction(HomeScreenState state, Action action) {
  final HomeScreenState newState = state.clone();
  return newState;
}
