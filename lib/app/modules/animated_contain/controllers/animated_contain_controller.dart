import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AnimatedContainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat();
}
