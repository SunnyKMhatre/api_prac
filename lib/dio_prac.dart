import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioPrac extends StatefulWidget {
  const DioPrac({super.key});

  @override
  State<DioPrac> createState() => _DioPracState();
}

class _DioPracState extends State<DioPrac> {
  List? getRespo;
  List? getNews;
  void getData() async {
    try {
      Dio getDio = Dio();
      var value = await getDio.get(
          "https://mapi.trycatchtech.com/v3/virat_kohli/slogans_list_no_page");
      // var value = await getDio.get("https://catfact.ninja/fact");

      if (value.data != null) {
        getRespo = jsonDecode(value.data);
        setState(() {});
        print(getRespo);
      }
      // setState(() {});
    } catch (e) {
      print(e.toString());
    }
  }

  void getNewsData() async {
    try {
      Dio getNewsDio = Dio();
      var newsvalue = await getNewsDio.get(
          "https://mapi.trycatchtech.com/v3/virat_kohli/virat_kohli_news_list");

      if (newsvalue.data != null) {
        getNews = jsonDecode(newsvalue.data);
        setState(() {});
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    getNewsData();
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Dio Practice"),
        ),
        body: getRespo == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: getRespo!.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      Text(getRespo![i]["id"]),
                      Row(
                        children: [
                          Text(getNews![i]["id"]),
                        ],
                      )
                    ],
                  );
                }));
  }
}
