# layers

A new Flutter package which helps developer to show layers in the applications.

## Getting Started

## Screenshots
<img src="https://raw.githubusercontent.com/Rajkumar07793/layers/master/flutter_01.png">

you can add layers in your container card by giving child as below

```dart

Container(
        color: Colors.white,
        child: CustomPaint(
          painter: CustomPainter1(),
        ),
      )

```

you can also manipulate the code by adding colors and opacity and radius of gradient circle as below

```dart

Container(
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
      )

```


This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
