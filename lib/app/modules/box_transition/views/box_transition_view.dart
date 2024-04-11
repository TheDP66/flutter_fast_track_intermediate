import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/box_transition_controller.dart';

class BoxTransitionView extends GetView<BoxTransitionController> {
  DecorationTween mydecoration = DecorationTween(
    begin: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(100),
    ),
    end: const BoxDecoration(
      color: Colors.teal,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoxTransitionView'),
        centerTitle: true,
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: mydecoration.animate(controller.animationC),
          child: const SizedBox(
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
