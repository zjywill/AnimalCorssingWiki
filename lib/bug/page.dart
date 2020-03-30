import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BugScreenPage extends Page<BugScreenState, Map<String, dynamic>> {
  BugScreenPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BugScreenState>(
                adapter: null,
                slots: <String, Dependent<BugScreenState>>{
                }),
            middleware: <Middleware<BugScreenState>>[
            ],);

}
