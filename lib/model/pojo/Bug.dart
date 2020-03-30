import 'BugData.dart';

class Bug {
  int code;
  List<BugData> data;

  Bug({this.code, this.data});

  Bug.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = new List<BugData>();
      json['data'].forEach((v) {
        data.add(new BugData.fromJson(v));
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
