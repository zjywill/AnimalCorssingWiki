import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

enum BugItemAction { showDetail }

class BugItemActionCreator {
  static Action showDetail(BugData bugData) {
    return Action(BugItemAction.showDetail, payload: bugData);
  }
}
