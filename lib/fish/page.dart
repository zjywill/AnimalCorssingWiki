import 'package:animalcorssingwiki/fish/fishadapter/adapter.dart';
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
          view: FishScreen().buildView,
          dependencies: Dependencies<FishScreenState>(
              adapter: NoneConn<FishScreenState>() + FishAdapterAdapter(),
              slots: <String, Dependent<FishScreenState>>{}),
          middleware: <Middleware<FishScreenState>>[],
        );
}
