import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BugScreenAction { onRefresh, refreshing, onPopulated }

class BugScreenActionCreator {
  static Action onRefresh() {
    return const Action(BugScreenAction.onRefresh);
  }

  static Action refreshing() {
    return const Action(BugScreenAction.refreshing);
  }

  static Action onPopulated() {
    return const Action(BugScreenAction.onPopulated);
  }
}
