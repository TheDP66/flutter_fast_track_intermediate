import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class FadeTrasitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(
      reverse: true,
    );
}
