import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeScreenPage extends Page<HomeScreenState, Map<String, dynamic>> {
  HomeScreenPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeScreenState>(
                adapter: null,
                slots: <String, Dependent<HomeScreenState>>{
                }),
            middleware: <Middleware<HomeScreenState>>[
            ],);

}
