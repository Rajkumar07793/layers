library layers;

import 'package:flutter/material.dart';

class CustomPainter1 extends CustomPainter {
  final List<Color> colors1;
  final List<Color> colors2;
  final List<Color> colors3;
  final double radius1;
  final double radius2;
  final double radius3;
  final double opacity;

  CustomPainter1(
      {Key key,
      this.colors1,
      this.colors2,
      this.colors3,
      this.radius1,
      this.radius2,
      this.radius3,
      this.opacity})
      : super();

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = RadialGradient(
              colors: colors1 ??
                  [
                    Color(0xffFE4182).withOpacity(opacity ?? 0.9),
                    Color(0xffFFA958).withOpacity(opacity ?? 0.9)
                  ])
          .createShader(
              Rect.fromCircle(center: Offset.zero, radius: radius1 ?? 300))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Paint paint2 = Paint()
      ..shader = RadialGradient(
              colors: colors2 ??
                  [
                    Color(0xffFF8958).withOpacity(opacity ?? 0.9),
                    Color(0xffFFA958).withOpacity(opacity ?? 0.9)
                  ])
          .createShader(Rect.fromCircle(
              center: Offset(0, size.height), radius: radius2 ?? 200))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Paint paint3 = Paint()
      ..shader = RadialGradient(
              colors: colors3 ??
                  [
                    Color(0xffE847BA).withOpacity(opacity ?? 0.9),
                    Color(0xff642A7B).withOpacity(opacity ?? 0.9)
                  ])
          .createShader(
              Rect.fromCircle(center: Offset.zero, radius: radius3 ?? 300))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Path path3 = Path()
      ..moveTo(0, size.height / 3)
      ..cubicTo(0, 0, size.width, size.height, size.width, size.height / 10)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    Path path4 = Path()
      ..moveTo(0, size.height / 3)
      ..cubicTo(
          0, 300, size.width / 4, size.height, size.width, size.height / 10)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0)
      ..close();

    Path path5 = Path()
      ..moveTo(0, size.height - 200)
      ..cubicTo(0, size.height - 100, size.width / 4, size.height, size.width,
          size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path3, paint3);
    canvas.drawPath(path4, paint);
    canvas.drawPath(path5, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
