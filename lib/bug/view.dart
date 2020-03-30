import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    BugScreenState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xff97cedb),
    appBar: AppBar(
      backgroundColor: Color(0xff7bc094),
      title: const Text('Animal Corssing: Bug'),
    ),
  );
}
