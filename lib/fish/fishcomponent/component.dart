import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FishItemComponent extends Component<FishItemState> {
  FishItemComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FishItemState>(
                adapter: null,
                slots: <String, Dependent<FishItemState>>{
                }),);

}
