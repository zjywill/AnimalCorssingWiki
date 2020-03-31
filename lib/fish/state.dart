import 'package:animalcorssingwiki/fish/fishcomponent/state.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';

class FishScreenState extends MutableSource
    implements Cloneable<FishScreenState> {
  bool loading;
  int selectIndex;
  List<FishItemState> list;

  @override
  FishScreenState clone() {
    return FishScreenState()
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
    return "fish_item";
  }

  @override
  int get itemCount => list?.length ?? 0;

  @override
  void setItemData(int index, Object data) {
    list[index] = data;
  }
}

FishScreenState initState(Map<String, dynamic> args) {
  return FishScreenState()
    ..loading = true
    ..selectIndex = 0;
}
