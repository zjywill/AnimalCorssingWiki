import 'package:animalcorssingwiki/model/pojo/BugData.dart';
import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:flutter/material.dart';

class BugDetail extends Dialog {
  BugData data;
  bool southern = false;

  BugDetail({Key key, @required this.data, @required this.southern})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        side: BorderSide(width: 2, color: Color(0xff75953c)));

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
            height: 480,
            child: Material(
              elevation: 24.0,
              color: Color(0xff92b05a),
              type: MaterialType.card,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(data.name,
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
                      child: Image.network(data.image),
                      decoration: BoxDecoration(
                          color: Color(0xfff0e6b5),
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
                          buildItemContent(data.location, 0),
                          buildItemContent(data.price, 10)
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemTitle("Time of Day", 0),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 2, left: 11, right: 11),
                      child: Row(
                        children: <Widget>[
                          buildItemContent(data.time, 0),
                        ],
                      )),
                  buildYearGrid(data)
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
            color: Color(0xffbad38b),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12))));
  }

  Widget buildItemContent(String text, double leftEdge) {
    return Container(
        width: 140,
        height: 48,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: leftEdge),
        child: Text(text,
            textAlign: TextAlign.center,
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

  Widget buildYearGrid(BugData data) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(top: 4, left: 11, right: 11),
      child: Column(
        children: <Widget>[
          Row(
            //b0e0e6   98fb98  adff2f   d2b48c
            children: <Widget>[
              buildYearGridItem(
                  "Jan", data.jan, southern ? 0xffb0e0e6 : 0xffadff2f),
              buildYearGridItem(
                  "Feb", data.feb, southern ? 0xffb0e0e6 : 0xffadff2f),
              buildYearGridItem(
                  "Mar", data.mar, southern ? 0xff98fb98 : 0xffd2b48c),
              buildYearGridItem(
                  "Apr", data.apr, southern ? 0xff98fb98 : 0xffd2b48c),
            ],
          ),
          Row(
            children: <Widget>[
              buildYearGridItem(
                  "May", data.may, southern ? 0xff98fb98 : 0xffd2b48c),
              buildYearGridItem(
                  "Jun", data.jun, southern ? 0xffadff2f : 0xffb0e0e6),
              buildYearGridItem(
                  "Jul", data.jul, southern ? 0xffadff2f : 0xffb0e0e6),
              buildYearGridItem(
                  "Aug", data.aug, southern ? 0xffadff2f : 0xffb0e0e6),
            ],
          ),
          Row(
            children: <Widget>[
              buildYearGridItem(
                  "Sep", data.sep, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Oct", data.oct, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Nov", data.nov, southern ? 0xffd2b48c : 0xff98fb98),
              buildYearGridItem(
                  "Sep", data.sep, southern ? 0xffb0e0e6 : 0xffadff2f)
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
