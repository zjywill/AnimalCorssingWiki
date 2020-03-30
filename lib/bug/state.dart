import 'package:fish_redux/fish_redux.dart';

class BugScreenState implements Cloneable<BugScreenState> {

  @override
  BugScreenState clone() {
    return BugScreenState();
  }
}

BugScreenState initState(Map<String, dynamic> args) {
  return BugScreenState();
}
