import 'package:animalcorssingwiki/fish/fishcomponent/state.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
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

  if (action.payload != null) {
    List<FishData> fishDataList = action.payload ?? List;
    List<FishItemState> list = List();
    for (FishData data in fishDataList) {
      FishItemState fishItemState = FishItemState();
      fishItemState.fishData = data;
      list.add(fishItemState);
    }
    newState.list = list;
  }

  return newState;
}