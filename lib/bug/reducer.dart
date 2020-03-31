import 'dart:developer';

import 'package:animalcorssingwiki/bug/bugscomponent/state.dart';
import 'package:animalcorssingwiki/fish/fishcomponent/state.dart';
import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BugsScreenState> buildReducer() {
  return asReducer(
    <Object, Reducer<BugsScreenState>>{
      BugsScreenAction.onPopulated: _onPopulated,
    },
  );
}

BugsScreenState _onPopulated(BugsScreenState state, Action action) {
  final BugsScreenState newState = state.clone();
  int index = newState.selectIndex;
  log("_onPopulated index: $index");
  if (action.payload != null) {
    List<BugData> bugDataList = action.payload ?? List;
    List<BugItemState> list = List();
    for (BugData data in bugDataList) {
      BugItemState bugItemState = BugItemState();
      bugItemState.bugData = data;
      bugItemState.southern = state.selectIndex == 1;
      list.add(bugItemState);
    }
    newState.list = list;
  }

  return newState;
}
