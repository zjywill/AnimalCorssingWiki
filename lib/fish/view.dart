import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    FishScreenState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
    backgroundColor: Color(0xff97cedb),
    appBar: AppBar(
      backgroundColor: Color(0xff7bc094),
      title: const Text('Animal Corssing: Fish'),
    ),
    body: Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, childAspectRatio: 1.0),
          itemCount: state.list?.length ?? 0,
          itemBuilder: adapter.itemBuilder),
    ),
  );
}
