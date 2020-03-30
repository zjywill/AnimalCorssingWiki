import 'FishData.dart';

class Fish {
  int code;
  List<FishData> data;

  Fish({this.code, this.data});

  Fish.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = new List<FishData>();
      json['data'].forEach((v) {
        data.add(new FishData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
