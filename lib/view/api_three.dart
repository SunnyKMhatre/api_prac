import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateless_api/controller/api3_controller.dart';

class ApiThree extends StatelessWidget {
  const ApiThree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ApiThreeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("API 3"),
      ),
      body: controller.response == null
          ? Center()
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(
                  child: Column(
                    children: [
                      Image.network(controller.response![i].image ?? ""),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
