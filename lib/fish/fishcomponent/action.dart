import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

enum FishItemAction { showDetail }

class FishItemActionCreator {
  static Action showDetail(FishData fishData) {
    return Action(FishItemAction.showDetail, payload: fishData);
  }
}
