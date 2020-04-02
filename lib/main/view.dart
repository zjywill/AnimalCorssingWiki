import 'dart:developer';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    HomeScreenState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xff97cedb),
    appBar: AppBar(
      backgroundColor: Color(0xff7bc094),
      title: const Text('Animal Corssing: New Horizen'),
    ),
    body: Stack(
      children: <Widget>[
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: InkWell(
                onTap: () {
                  dispatch(HomeScreenActionCreator.showFish());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Fish',
                      style: TextStyle(
                          fontFamily: 'Wood',
                          color: Colors.brown[600],
                          fontSize: 58,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              color: Color(0xff76acda),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  dispatch(HomeScreenActionCreator.showBug());
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Bugs',
                      style: TextStyle(
                          fontFamily: 'Wood',
                          color: Colors.brown[600],
                          fontSize: 58,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              color: Color(0xff92b05a),
            ),
          ],
        )
      ],
    ),
  );
}
