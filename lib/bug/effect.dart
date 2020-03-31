import 'dart:developer';

import 'package:animalcorssingwiki/model/api/AnimalApi.dart';
import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:animalcorssingwiki/model/pojo/Fish.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BugsScreenState> buildEffect() {
  return combineEffects(<Object, Effect<BugsScreenState>>{
    Lifecycle.initState: _init,
    BugsScreenAction.onRefresh: _onRefresh,
    BugsScreenAction.selectChange: _selectChange
  });
}

void _init(Action action, Context<BugsScreenState> ctx) async {
  String pole = "northern";
  ctx.dispatch(BugsScreenActionCreator.onPopulated(await getBug(pole)));
}

void _onRefresh(Action action, Context<BugsScreenState> ctx) async {
  String pole = "northern";
  if (action.payload != null) {
    pole = action.payload ?? String;
  }
  ctx.dispatch(BugsScreenActionCreator.onPopulated(await getBug(pole)));
}

void _selectChange(Action action, Context<BugsScreenState> ctx) async {
  String pole = "northern";
  if (action.payload != null) {
    int selectIndex = action.payload ?? int;
    pole = selectIndex == 1 ? "southern" : "northern";
    log("pole: $pole");
    ctx.state.selectIndex = selectIndex;
  }
  ctx.dispatch(BugsScreenActionCreator.onPopulated(await getBug(pole)));
}

Future<List<BugData>> getBug(String pole) async {
  var bug = await AnimalApi().fetchBug(pole);
  return bug.data;
}
