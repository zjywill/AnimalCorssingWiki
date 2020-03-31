import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

class FishItemState implements Cloneable<FishItemState> {
  FishData fishData;
  bool southern = false;

  @override
  FishItemState clone() {
    return FishItemState()
      ..fishData = fishData
      ..southern = southern;
  }
}

FishItemState initState(Map<String, dynamic> args) {
  return FishItemState()..southern = false;
}
