import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedBuilderController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat();
}
