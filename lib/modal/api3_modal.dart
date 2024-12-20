class OfWallpaper {
  String? id;
  String? image;
  String? thumbImage;

  OfWallpaper({this.id, this.image, this.thumbImage});

  OfWallpaper.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    image = json["image"];
    thumbImage = json["thumb_image"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["image"] = image;
    _data["thumb_image"] = thumbImage;
    return _data;
  }

  static List<OfWallpaper> wallpapers(List value) {
    return value.map((e) => OfWallpaper.fromJson(e)).toList();
  }
}
