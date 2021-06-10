import 'package:flutter/material.dart';
import 'package:layers/layers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layers Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        color: Colors.white,
        child: CustomPaint(
          painter: CustomPainter1(
            colors1: [
              Colors.greenAccent.withOpacity(0.7),
              Colors.greenAccent.withOpacity(0.8),
            ],
            radius1: 300,
            colors2: [
              Colors.greenAccent.withOpacity(0.7),
              Colors.greenAccent.withOpacity(0.8),
            ],
            radius2: 300,
            colors3: [
              Colors.greenAccent.withOpacity(0.7),
              Colors.greenAccent.withOpacity(0.8),
            ],
            radius3: 300,
          ),
        ),
      ),
    );
  }
}