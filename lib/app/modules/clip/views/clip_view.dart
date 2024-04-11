import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/clip_controller.dart';

class ClipView extends GetView<ClipController> {
  const ClipView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),
            ),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
              child: const FlutterLogo(
                size: 300,
              ),
            ),
          ),
          ClipPath(
            clipper: FreeClip(),
            child: Container(
              width: 300,
              height: 300,
              color: Colors.grey[300],
              child: const FlutterLogo(
                size: 300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FreeClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(size.width / 2, 0) //? Menggeser titik awal dari 0, 0
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * .5, size.height * .5)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
