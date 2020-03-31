import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:animalcorssingwiki/model/pojo/Fish.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BugsScreenAction { onRefresh, updateSelect, onPopulated, selectChange }

class BugsScreenActionCreator {
  static Action onRefresh(String pole) {
    return Action(BugsScreenAction.onRefresh, payload: pole);
  }

  static Action updateSelect() {
    return const Action(BugsScreenAction.updateSelect);
  }

  static Action onPopulated(List<BugData> fishData) {
    return Action(BugsScreenAction.onPopulated, payload: fishData);
  }

  static Action selectChange(int selectIndex) {
    return Action(BugsScreenAction.selectChange, payload: selectIndex);
  }
}
