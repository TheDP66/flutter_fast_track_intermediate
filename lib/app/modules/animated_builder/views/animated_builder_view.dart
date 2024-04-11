import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_builder_controller.dart';

class AnimatedBuilderView extends GetView<AnimatedBuilderController> {
  const AnimatedBuilderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilderView'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.purple,
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: controller.animationC,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                builder: (context, widget) {
                  return Positioned(
                    top: 0,
                    //* Value dari 0 -> 1
                    // right: controller.animationC.value * 250,
                    //? Rumus convert dari 0 -> 1 -> 0
                    right: 2 *
                        (0.5 - (.5 - controller.animationC.value).abs()) *
                        250,
                    child: widget!,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
