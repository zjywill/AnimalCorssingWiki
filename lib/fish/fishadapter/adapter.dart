import 'package:animalcorssingwiki/fish/fishadapter/reducer.dart';
import 'package:animalcorssingwiki/fish/fishcomponent/component.dart';
import 'package:animalcorssingwiki/fish/fishcomponent/state.dart';
import 'package:animalcorssingwiki/fish/state.dart';
import 'package:fish_redux/fish_redux.dart';

class FishAdapterAdapter extends SourceFlowAdapter<FishScreenState> {
  FishAdapterAdapter()
      : super(
          pool: <String, Component<Object>>{"fish_item": FishItemComponent()},
          reducer: buildReducer(),
        );
}
