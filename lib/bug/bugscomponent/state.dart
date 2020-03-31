import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:fish_redux/fish_redux.dart';

class BugItemState implements Cloneable<BugItemState> {
  BugData bugData;
  bool southern = false;

  @override
  BugItemState clone() {
    return BugItemState()
      ..bugData = bugData
      ..southern = southern;
  }
}

BugItemState initState(Map<String, dynamic> args) {
  return BugItemState()..southern = false;
}
