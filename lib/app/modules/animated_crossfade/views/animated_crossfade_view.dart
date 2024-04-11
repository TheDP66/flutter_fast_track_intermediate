import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_crossfade_controller.dart';

class AnimatedCrossfadeView extends GetView<AnimatedCrossfadeController> {
  const AnimatedCrossfadeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossfadeView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Obx(
            () => AnimatedCrossFade(
              firstChild:
                  Container(color: Colors.amber, height: 200, width: 200),
              secondChild: const FlutterLogo(size: 200),
              crossFadeState: controller.selected.isFalse
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 2),
            ),
          ),
        ),
      ),
    );
  }
}
