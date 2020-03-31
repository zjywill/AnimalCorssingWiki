import 'dart:developer';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

class FishScreen {
  Widget buildView(
      FishScreenState state, Dispatch dispatch, ViewService viewService) {
    final ListAdapter adapter = viewService.buildAdapter();
    log("loading: " + state.loading.toString());

    return Scaffold(
        backgroundColor: Color(0xff97cedb),
        appBar: AppBar(
          backgroundColor: Color(0xff7bc094),
          title: const Text('Animal Corssing: Fish'),
        ),
        body: Container(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: CupertinoSegmentedControl<int>(
              selectedColor: Color(0xff7bc094),
              borderColor: Colors.white,
              children: {
                0: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('northern')),
                1: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('southern')),
              },
              onValueChanged: (int val) {
                log("onValueChanged $val");
                dispatch(FishScreenActionCreator.selectChange(val));
              },
              groupValue: state.selectIndex,
            ),
          ),
          Expanded(
              child: Stack(
            children: <Widget>[
              Visibility(
                visible: !state.loading,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, childAspectRatio: 1.0),
                    itemCount: state.list?.length ?? 0,
                    itemBuilder: adapter.itemBuilder),
              ),
              Visibility(
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                  visible: state.loading),
            ],
          ))
        ])));
  }
}
