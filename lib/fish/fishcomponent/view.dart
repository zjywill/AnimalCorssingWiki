import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    FishItemState state, Dispatch dispatch, ViewService viewService) {
  return Container(
      child: InkWell(
    onTap: () {
      dispatch(FishItemActionCreator.showDetail(state.fishData));
    },
    child: Container(
      margin: EdgeInsets.all(8),
      child: Image.network(state.fishData.image),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width:2),
        borderRadius: new BorderRadius.all(Radius.circular(12)),
      ),
    ),
  ));
}
