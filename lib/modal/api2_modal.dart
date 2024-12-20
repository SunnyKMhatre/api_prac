class OfNews {
  String? id;
  String? newsTitle;
  String? newsImage;
  String? thumbImage;

  OfNews({this.id, this.newsTitle, this.newsImage, this.thumbImage});

  OfNews.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    newsTitle = json["news_title"];
    newsImage = json["news_image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["news_title"] = newsTitle;
    _data["news_image"] = newsImage;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

  static List<OfNews> Newss(List value) {
    return value.map((e) => OfNews.fromJson(e)).toList();
  }
}
