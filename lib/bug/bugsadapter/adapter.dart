import 'package:animalcorssingwiki/bug/bugsadapter/reducer.dart';
import 'package:animalcorssingwiki/bug/bugscomponent/component.dart';
import 'package:animalcorssingwiki/bug/state.dart';
import 'package:fish_redux/fish_redux.dart';

class BugsAdapterAdapter extends SourceFlowAdapter<BugsScreenState> {
  BugsAdapterAdapter()
      : super(
          pool: <String, Component<Object>>{"bug_item": BugItemComponent()},
          reducer: buildReducer(),
        );
}
