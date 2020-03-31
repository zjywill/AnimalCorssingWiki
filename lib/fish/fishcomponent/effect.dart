import 'package:animalcorssingwiki/fish/fishdetail/FishDetail.dart';
import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action;

Effect<FishItemState> buildEffect() {
  return combineEffects(<Object, Effect<FishItemState>>{
    FishItemAction.showDetail: _showDetail,
  });
}

void _showDetail(Action action, Context<FishItemState> ctx) async {
  final String result = await showDialog(
      context: ctx.context,
      builder: (buildContext) {
        return FishDetail(
          fishData: ctx.state.fishData,
          southern: ctx.state.southern,
        );
      });
}
