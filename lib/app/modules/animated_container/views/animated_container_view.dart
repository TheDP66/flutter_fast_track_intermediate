import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_container_controller.dart';

class AnimatedContainerView extends GetView<AnimatedContainerController> {
  const AnimatedContainerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainerView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Obx(
            () => AnimatedContainer(
              duration: const Duration(seconds: 2),
              //  curve: Curves.elasticIn,
              //  curve: Curves.bounceIn,
              curve: Curves.easeIn,
              width: controller.selected.isFalse ? 200 : 350,
              height: controller.selected.isFalse ? 200 : 350,
              color: controller.selected.isFalse ? Colors.amber : Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
