import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateless_api/controller/api1_controller.dart';

class ApiOne extends StatelessWidget {
  const ApiOne({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ApiOneController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Api 1"),
      ),
      body: controller.response == null
          ? Center()
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Text(controller.response![i].slogan ?? "");
              }),
    );
  }
}
