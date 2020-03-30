import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeScreenAction { showFish, showBug }

class HomeScreenActionCreator {
  static Action showFish() {
    return const Action(HomeScreenAction.showFish);
  }

  static Action showBug() {
    return const Action(HomeScreenAction.showBug);
  }
}
