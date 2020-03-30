import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FishItemAction { action }

class FishItemActionCreator {
  static Action onAction() {
    return const Action(FishItemAction.action);
  }
}
