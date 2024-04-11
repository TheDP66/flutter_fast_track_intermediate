import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BoxTransitionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationC = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(
      reverse: true,
    );
}
