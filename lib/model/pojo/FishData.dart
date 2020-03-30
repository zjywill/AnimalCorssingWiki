class FishData {
  String sId;
  String name;
  String image;
  String price;
  String location;
  String shadowSize;
  String time;
  bool jan;
  bool feb;
  bool mar;
  bool apr;
  bool may;
  bool jun;
  bool jul;
  bool aug;
  bool sep;
  bool oct;
  bool nov;
  bool dec;

  FishData(
      {this.sId,
      this.name,
      this.image,
      this.price,
      this.location,
      this.shadowSize,
      this.time,
      this.jan,
      this.feb,
      this.mar,
      this.apr,
      this.may,
      this.jun,
      this.jul,
      this.aug,
      this.sep,
      this.oct,
      this.nov,
      this.dec});

  FishData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['Name'];
    image = json['Image'];
    price = json['Price'];
    location = json['Location'];
    shadowSize = json['Shadow size'];
    time = json['Time'];
    jan = json['Jan'];
    feb = json['Feb'];
    mar = json['Mar'];
    apr = json['Apr'];
    may = json['May'];
    jun = json['Jun'];
    jul = json['Jul'];
    aug = json['Aug'];
    sep = json['Sep'];
    oct = json['Oct'];
    nov = json['Nov'];
    dec = json['Dec'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['Name'] = this.name;
    data['Image'] = this.image;
    data['Price'] = this.price;
    data['Location'] = this.location;
    data['Shadow size'] = this.shadowSize;
    data['Time'] = this.time;
    data['Jan'] = this.jan;
    data['Feb'] = this.feb;
    data['Mar'] = this.mar;
    data['Apr'] = this.apr;
    data['May'] = this.may;
    data['Jun'] = this.jun;
    data['Jul'] = this.jul;
    data['Aug'] = this.aug;
    data['Sep'] = this.sep;
    data['Oct'] = this.oct;
    data['Nov'] = this.nov;
    data['Dec'] = this.dec;
    return data;
  }
}
