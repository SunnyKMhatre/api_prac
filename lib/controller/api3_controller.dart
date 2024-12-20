import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:stateless_api/modal/api3_modal.dart';

class ApiThreeController extends ChangeNotifier {
  List<OfWallpaper>? response;

  void getData() async {
    EasyLoading.show(status: "Loading");
    try {
      var api = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/virat_kohli/virat_kohli_wallpapers_list?page=1"));
      if (api.statusCode == 200) {
        response = OfWallpaper.wallpapers(jsonDecode(api.body));
      } else {
        print("No API Fetched");
      }
    } catch (e) {
      print(e.toString());
    }

    EasyLoading.dismiss();
  }
}
