import 'package:animalcorssingwiki/bug/bugsadapter/adapter.dart';
import 'package:animalcorssingwiki/fish/fishadapter/adapter.dart';
import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BugsScreenPage extends Page<BugsScreenState, Map<String, dynamic>> {
  BugsScreenPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<BugsScreenState>(
                adapter: NoneConn<BugsScreenState>() + BugsAdapterAdapter(),
                slots: <String, Dependent<BugsScreenState>>{
                }),
            middleware: <Middleware<BugsScreenState>>[
            ],);

}
