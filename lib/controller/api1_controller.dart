import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
import 'package:stateless_api/modal/api1_modal.dart';

class ApiOneController extends ChangeNotifier {
  List<OfSlogan>? response;

  void getData() async {
    EasyLoading.show(status: "Loading");
    try {
      var api = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/virat_kohli/slogans_list_no_page"));
      if (api.statusCode == 200) {
        response = OfSlogan.slogans(jsonDecode(api.body));
        notifyListeners();
      } else {
        print("No API Fetched");
      }
    } catch (e) {
      print(e.toString());
    }

    EasyLoading.dismiss();
  }
}
