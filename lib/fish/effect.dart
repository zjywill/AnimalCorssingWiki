import 'package:animalcorssingwiki/model/api/AnimalApi.dart';
import 'package:animalcorssingwiki/model/pojo/Fish.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FishScreenState> buildEffect() {
  return combineEffects(<Object, Effect<FishScreenState>>{
    Lifecycle.initState: _init,
    FishScreenAction.onRefresh: _onRefresh,
  });
}

void _init(Action action, Context<FishScreenState> ctx) async {
  String pole = "northern";
  ctx.dispatch(FishScreenActionCreator.onPopulated(await getFish(pole)));
}

void _onRefresh(Action action, Context<FishScreenState> ctx) async {
  String pole = "northern";
  if (action.payload != null) {
    pole = action.payload ?? String;
  }
  ctx.dispatch(FishScreenActionCreator.onPopulated(await getFish(pole)));
}

Future<List<FishData>> getFish(String pole) async {
  var fish = await AnimalApi().fetchFish(pole);
  return fish.data;
}
