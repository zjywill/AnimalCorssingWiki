import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FishScreenPage extends Page<FishScreenState, Map<String, dynamic>> {
  FishScreenPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FishScreenState>(
                adapter: null,
                slots: <String, Dependent<FishScreenState>>{
                }),
            middleware: <Middleware<FishScreenState>>[
            ],);

}
