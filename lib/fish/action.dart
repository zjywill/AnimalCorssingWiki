import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FishScreenAction { onRefresh, refreshing, onPopulated }

class FishScreenActionCreator {
  static Action onRefresh() {
    return const Action(FishScreenAction.onRefresh);
  }

  static Action refreshing() {
    return const Action(FishScreenAction.refreshing);
  }

  static Action onPopulated() {
    return const Action(FishScreenAction.onPopulated);
  }
}
