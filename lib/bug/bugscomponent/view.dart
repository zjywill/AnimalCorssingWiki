import 'dart:developer';

import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

class BugItemView {
  Widget buildView(
      BugItemState state, Dispatch dispatch, ViewService viewService) {
    return Container(
        child: InkWell(
      onTap: () {
        dispatch(BugItemActionCreator.showDetail(state.bugData));
      },
      child: Container(
        margin: EdgeInsets.all(8),
        child: buildCenter(state.bugData),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: new BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ));
  }

  Widget buildCenter(BugData bugData) {
    if (bugData.image == "Unknown") {
      return Container(
        alignment: Alignment.center,
        child: Text(bugData.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      );
    }
    return Image.network(bugData.image);
  }
}
