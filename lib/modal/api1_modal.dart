class OfSlogan {
  String? id;
  String? slogan;

  OfSlogan({this.id, this.slogan});

  OfSlogan.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    slogan = json["slogan"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["slogan"] = slogan;
    return _data;
  }

  static List<OfSlogan> slogans(List value) {
    return value.map((e) => OfSlogan.fromJson(e)).toList();
  }
}
