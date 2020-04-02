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
          color: getBgColor(state.bugData),
          border: Border.all(color: Color(0xff75953c), width: 2),
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

  Color getBgColor(BugData bugData) {
    var now = new DateTime.now();
    log("now month" + now.month.toString());
    Color bgColor = Colors.white;
    switch (now.month) {
      case 1:
        bgColor = bugData.jan ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 2:
        bgColor = bugData.feb ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 3:
        bgColor = bugData.mar ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 4:
        bgColor = bugData.apr ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 5:
        bgColor = bugData.may ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 6:
        bgColor = bugData.jun ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 7:
        bgColor = bugData.jul ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 8:
        bgColor = bugData.aug ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 9:
        bgColor = bugData.sep ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 10:
        bgColor = bugData.oct ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 11:
        bgColor = bugData.nov ? Color(0xfff0e6b5) : Colors.white;
        break;
      case 12:
        bgColor = bugData.dec ? Color(0xfff0e6b5) : Colors.white;
        break;
    }
    return bgColor;
  }
}
