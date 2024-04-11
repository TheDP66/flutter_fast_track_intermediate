import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/custom_paint_controller.dart';

class CustomPaintView extends GetView<CustomPaintController> {
  const CustomPaintView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaintView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey[300],
          child: CustomPaint(
            painter: MyPainter(),
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint mypaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 25
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(0, size.height),
      const Offset(0, 0),
      mypaint,
    );

    canvas.drawLine(
      const Offset(0, 0),
      Offset(size.width * 0.5, size.height * .5),
      mypaint,
    );

    canvas.drawLine(
      Offset(size.width * 0.5, size.height * .5),
      Offset(size.width, 0),
      mypaint,
    );

    canvas.drawLine(
      Offset(size.width, 0),
      Offset(size.width, size.height),
      mypaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
