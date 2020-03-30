import 'package:fish_redux/fish_redux.dart';

class HomeScreenState implements Cloneable<HomeScreenState> {

  @override
  HomeScreenState clone() {
    return HomeScreenState();
  }
}

HomeScreenState initState(Map<String, dynamic> args) {
  return HomeScreenState();
}
