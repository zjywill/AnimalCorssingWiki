import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FishAdapterAction { action }

class FishAdapterActionCreator {
  static Action onAction() {
    return const Action(FishAdapterAction.action);
  }
}
