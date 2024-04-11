import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_align_controller.dart';

class AnimatedAlignView extends GetView<AnimatedAlignController> {
  const AnimatedAlignView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlignView'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => controller.selected.toggle(),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: AnimatedAlign(
              //  curve: Curves.elasticIn,
              //  curve: Curves.bounceIn,
              curve: Curves.easeIn,
              duration: const Duration(seconds: 2),
              alignment: controller.selected.isFalse
                  ? Alignment.center
                  : Alignment.topRight,
              child: const Text("HALO"),
            ),
          ),
        ),
      ),
    );
  }
}
