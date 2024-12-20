import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateless_api/controller/api2_controller.dart';

class ApiTwo extends StatelessWidget {
  const ApiTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<ApiTwoController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("API 2:"),
      ),
      body: controller.response == null
          ? Center()
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(controller.response![i].newsTitle ?? ""),
                      SizedBox(height: 20),
                      Image.network(controller.response![i].newsImage ?? "")
                    ],
                  ),
                );
              },
            ),
    );
  }
}
