import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_opacity_controller.dart';

class AnimatedOpacityView extends GetView<AnimatedOpacityController> {
  const AnimatedOpacityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacityView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Obx(
            () => AnimatedOpacity(
              opacity: controller.selected.isFalse ? 1 : .5,
              duration: const Duration(seconds: 1),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
