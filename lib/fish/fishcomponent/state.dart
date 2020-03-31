import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

class FishItemState implements Cloneable<FishItemState> {
  FishData fishData;

  @override
  FishItemState clone() {
    return FishItemState()..fishData = fishData;
  }
}

FishItemState initState(Map<String, dynamic> args) {
  return FishItemState();
}
