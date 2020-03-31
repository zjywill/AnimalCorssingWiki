import 'package:animalcorssingwiki/bug/bugscomponent/state.dart';
import 'package:animalcorssingwiki/fish/fishcomponent/state.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

class BugsScreenState extends MutableSource
    implements Cloneable<BugsScreenState> {
  bool loading;
  int selectIndex;
  List<BugItemState> list;

  @override
  BugsScreenState clone() {
    return BugsScreenState()
      ..list = list
      ..loading = loading
      ..selectIndex = selectIndex;
  }

  @override
  Object getItemData(int index) {
    return list[index];
  }

  @override
  String getItemType(int index) {
    return "bug_item";
  }

  @override
  int get itemCount => list?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    list[index] = data;
  }
}

BugsScreenState initState(Map<String, dynamic> args) {
  return BugsScreenState()
    ..loading = true
    ..selectIndex = 0;
}
