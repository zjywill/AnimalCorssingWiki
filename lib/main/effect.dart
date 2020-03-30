import 'dart:developer';

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action;

Effect<HomeScreenState> buildEffect() {
  return combineEffects(<Object, Effect<HomeScreenState>>{
    HomeScreenAction.showFish: _showFish,
    HomeScreenAction.showBug: _showBug,
  });
}

void _showFish(Action action, Context<HomeScreenState> ctx) {
  log("_showFish");
  Navigator.of(ctx.context).pushNamed('fish_screen');
}

void _showBug(Action action, Context<HomeScreenState> ctx) {
  log("_showBug");
  Navigator.of(ctx.context).pushNamed('bug_screen');
}
