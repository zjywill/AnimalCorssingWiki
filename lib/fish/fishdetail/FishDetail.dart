import 'package:animalcorssingwiki/model/pojo/FishData.dart';
import 'package:flutter/material.dart';

class FishDetail extends Dialog {
  FishData fishData;

  FishDetail({Key key, @required this.fishData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        side: BorderSide(width: 2, color: Colors.black));

    RoundedRectangleBorder _whiteRound = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24.0)));

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
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
              color: Color(0xff76acda),
              type: MaterialType.card,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(fishData.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
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
                  )
                ],
              ),
              shape: _defaultDialogShape,
            ),
          ),
        ),
      ),
    );
  }
}
