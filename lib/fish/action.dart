import 'package:animalcorssingwiki/model/pojo/Fish.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FishScreenAction { onRefresh, refreshing, onPopulated, selectChange }

class FishScreenActionCreator {
  static Action onRefresh(String pole) {
    return Action(FishScreenAction.onRefresh, payload: pole);
  }

  static Action refreshing() {
    return const Action(FishScreenAction.refreshing);
  }

  static Action onPopulated(List<FishData> fishData) {
    return Action(FishScreenAction.onPopulated, payload: fishData);
  }

  static Action selectChange(int selectIndex) {
    return Action(FishScreenAction.selectChange, payload: selectIndex);
  }
}
