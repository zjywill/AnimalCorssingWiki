import 'dart:developer';

import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

class FishItem {
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
          color: getBgColor(state.fishData),
          border: Border.all(color: Color(0xff174a75), width: 2),
          borderRadius: new BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ));
  }

  Color getBgColor(FishData fishData) {
    var now = new DateTime.now();
    log("now month" + now.month.toString());
    Color bgColor = Colors.white;
    switch (now.month) {
      case 1:
        bgColor = fishData.jan ? Color(0xffbed5fd) : Colors.white;
        break;
      case 2:
        bgColor = fishData.feb ? Color(0xffbed5fd) : Colors.white;
        break;
      case 3:
        bgColor = fishData.mar ? Color(0xffbed5fd) : Colors.white;
        break;
      case 4:
        bgColor = fishData.apr ? Color(0xffbed5fd) : Colors.white;
        break;
      case 5:
        bgColor = fishData.may ? Color(0xffbed5fd) : Colors.white;
        break;
      case 6:
        bgColor = fishData.jun ? Color(0xffbed5fd) : Colors.white;
        break;
      case 7:
        bgColor = fishData.jul ? Color(0xffbed5fd) : Colors.white;
        break;
      case 8:
        bgColor = fishData.aug ? Color(0xffbed5fd) : Colors.white;
        break;
      case 9:
        bgColor = fishData.sep ? Color(0xffbed5fd) : Colors.white;
        break;
      case 10:
        bgColor = fishData.oct ? Color(0xffbed5fd) : Colors.white;
        break;
      case 11:
        bgColor = fishData.nov ? Color(0xffbed5fd) : Colors.white;
        break;
      case 12:
        bgColor = fishData.dec ? Color(0xffbed5fd) : Colors.white;
        break;
    }
    return bgColor;
  }
}
