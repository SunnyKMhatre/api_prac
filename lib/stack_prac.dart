import 'package:flutter/material.dart';

class StackPrac extends StatefulWidget {
  const StackPrac({super.key});

  @override
  State<StackPrac> createState() => _StackPracState();
}

class _StackPracState extends State<StackPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
          ),
          Positioned(
              top: 100,
              // bottom: 100,
              left: 100,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )),
          Positioned(
              top: 180,
              // bottom: 200,
              left: 180,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )),
          Positioned(
              top: 260,
              // bottom: 200,
              left: 260,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )),
          Positioned(
              top: 340,
              // bottom: 200,
              left: 340,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              )),
        ],
      ),
    );
  }
}
