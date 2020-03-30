import 'package:fish_redux/fish_redux.dart';

class FishItemState implements Cloneable<FishItemState> {

  @override
  FishItemState clone() {
    return FishItemState();
  }
}

FishItemState initState(Map<String, dynamic> args) {
  return FishItemState();
}
