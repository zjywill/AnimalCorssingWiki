import 'package:animalcorssingwiki/bug/bugsdetail/BugDetail.dart';
import 'package:animalcorssingwiki/fish/fishdetail/FishDetail.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action;

Effect<BugItemState> buildEffect() {
  return combineEffects(<Object, Effect<BugItemState>>{
    BugItemAction.showDetail: _showDetail,
  });
}

void _showDetail(Action action, Context<BugItemState> ctx) async {
  final String result = await showDialog(
      context: ctx.context,
      builder: (buildContext) {
        return BugDetail(
          data: ctx.state.bugData,
          southern: ctx.state.southern,
        );
      });
}
