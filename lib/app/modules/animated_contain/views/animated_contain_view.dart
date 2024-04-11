import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animated_contain_controller.dart';

class AnimatedContainView extends GetView<AnimatedContainController> {
  const AnimatedContainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainView'),
        centerTitle: true,
      ),
      body: Center(
        child: MyWidget(myC: controller.animationC),
      ),
    );
  }
}

class MyWidget extends AnimatedWidget {
  MyWidget({Key? key, required this.myC}) : super(key: key, listenable: myC);

  AnimationController myC;

  get progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: progress.value * 2 * pi,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.purple,
      ),
    );
  }
}
