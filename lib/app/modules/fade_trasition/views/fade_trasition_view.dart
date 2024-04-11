import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fade_trasition_controller.dart';

class FadeTrasitionView extends GetView<FadeTrasitionController> {
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
        title: const Text('FadeTransitionView'),
        centerTitle: true,
      ),
      body: Center(
        child: FadeTransition(
          opacity: CurvedAnimation(
            parent: controller.animationC,
            curve: Curves.easeInOut,
          ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }
}
