

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Sky extends CustomPainter {
  final width;
  final  heigth;
  Sky({required this.width,required this.heigth});
  @override

  void paint(Canvas canvas, Size size) {

    Paint paint = Paint();
    paint.color = Color(0xffe16f6f);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth=30;
    paint.strokeCap = StrokeCap.round;
    paint.strokeJoin = StrokeJoin.bevel;

    Offset offset = Offset(this.width,this.heigth);
    canvas.drawCircle(offset, 450, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}