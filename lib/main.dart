import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:stateless_api/controller/api1_controller.dart';
import 'package:stateless_api/controller/api2_controller.dart';
import 'package:stateless_api/controller/api3_controller.dart';
import 'package:stateless_api/dio_prac.dart';
import 'package:stateless_api/stack_prac.dart';
import 'package:stateless_api/view/api_one.dart';
import 'package:stateless_api/view/api_three.dart';
import 'package:stateless_api/view/api_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ApiOneController()),
        ChangeNotifierProvider(create: (context) => ApiTwoController()),
        ChangeNotifierProvider(create: (context) => ApiThreeController()),
      ],
      child: MaterialApp(
        title: 'Stateless API',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
          useMaterial3: true,
        ),
        home: StackPrac(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller1 = context.read<ApiOneController>();
    final controller2 = context.read<ApiTwoController>();
    final controller3 = context.read<ApiThreeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard:"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ApiOne()));
                controller1.getData();
              },
              child: Text("Api 1"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ApiTwo()));
                controller2.getData();
              },
              child: Text("Api 2"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ApiThree()));
                controller3.getData();
              },
              child: Text("Api 3"),
            ),
          ],
        ),
      ),
    );
  }
}
