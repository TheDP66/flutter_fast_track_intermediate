import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_positioned_controller.dart';

class AnimatedPositionedView extends GetView<AnimatedPositionedController> {
  const AnimatedPositionedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositionedView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Obx(
            () => Container(
              width: 300,
              height: 500,
              color: Colors.purple,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(seconds: 1),
                    top: controller.selected.isFalse ? 100 : 200,
                    left: controller.selected.isFalse ? 30 : 200,
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
