import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BugItemComponent extends Component<BugItemState> {
  BugItemComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: BugItemView().buildView,
          dependencies: Dependencies<BugItemState>(
              adapter: null, slots: <String, Dependent<BugItemState>>{}),
        );
}
