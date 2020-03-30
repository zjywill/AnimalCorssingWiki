import 'package:fish_redux/fish_redux.dart';

class FishScreenState implements Cloneable<FishScreenState> {

  @override
  FishScreenState clone() {
    return FishScreenState();
  }
}

FishScreenState initState(Map<String, dynamic> args) {
  return FishScreenState();
}
