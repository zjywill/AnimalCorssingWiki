import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:flutter/material.dart';

class FishDetail extends Dialog {
  FishData fishData;
  bool southern = false;

  FishDetail({Key key, @required this.fishData, @required this.southern})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        side: BorderSide(width: 2, color: Colors.black));

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 0.0, vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: SizedBox(
            width: 320,
            height: 440,
            child: Material(
              elevation: 24.0,
              color: Color(0xff76acda),
              type: MaterialType.card,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(fishData.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Container(
                      width: 290,
                      height: 100,
                      alignment: Alignment.center,
                      child: Image.network(fishData.image),
                      decoration: BoxDecoration(
                          color: Color(0xffbed5fd),
                          border: Border.all(width: 2.0, color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemTitle("Location", 0),
                          buildItemTitle("Price", 10)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 2, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemContent(fishData.location, 0),
                          buildItemContent(fishData.price, 10)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemTitle("Time of Day", 0),
                          buildItemTitle("Shadow Size", 10)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 2, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemContent(fishData.time, 0),
                          buildItemContent(fishData.shadowSize, 10)
                        ],
                      )),
                  buildYearGrid(fishData)
                ],
              ),
              shape: _defaultDialogShape,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildItemTitle(String text, double leftEdge) {
    return Container(
        width: 140,
        height: 24,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: leftEdge),
        child: Text(text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        decoration: BoxDecoration(
            color: Color(0xffb1d1ed),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))));
  }

  Widget buildItemContent(String text, double leftEdge) {
    return Container(
        width: 140,
        height: 24,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: leftEdge),
        child: Text(text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))));
  }

  Widget buildYearGrid(FishData fishData) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 4, left: 11, right: 11),
      child: Column(
        children: <Widget>[
          Row(
            //b0e0e6   98fb98  adff2f   d2b48c
            children: <Widget>[
              buildYearGridItem(
                  "Jan", fishData.jan, southern ? 0xffb0e0e6 : 0xffadff2f),
              buildYearGridItem(
                  "Feb", fishData.feb, southern ? 0xffb0e0e6 : 0xffadff2f),
              buildYearGridItem(
                  "Mar", fishData.mar, southern ? 0xff98fb98 : 0xffd2b48c),
              buildYearGridItem(
                  "Apr", fishData.apr, southern ? 0xff98fb98 : 0xffd2b48c),
            ],
          ),
          Row(
            children: <Widget>[
              buildYearGridItem(
                  "May", fishData.may, southern ? 0xff98fb98 : 0xffd2b48c),
              buildYearGridItem(
                  "Jun", fishData.jun, southern ? 0xffadff2f : 0xffb0e0e6),
              buildYearGridItem(
                  "Jul", fishData.jul, southern ? 0xffadff2f : 0xffb0e0e6),
              buildYearGridItem(
                  "Aug", fishData.aug, southern ? 0xffadff2f : 0xffb0e0e6),
            ],
          ),
          Row(
            children: <Widget>[
              buildYearGridItem(
                  "Sep", fishData.sep, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Oct", fishData.oct, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Nov", fishData.nov, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Sep", fishData.sep, southern ? 0xffb0e0e6 : 0xffadff2f)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildYearGridItem(String name, bool check, int color) {
    return Container(
        height: 36,
        width: 56,
        margin: EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 2),
              alignment: Alignment.topLeft,
              child: Text(name,
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(right: 4),
              alignment: Alignment.bottomRight,
              child: Text(check ? '✓' : '--',
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color(color),
            border: Border.all(width: 2.0, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(12))));
  }
}
