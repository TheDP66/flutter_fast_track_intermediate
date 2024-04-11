import 'package:get/get.dart';

import '../controllers/animated_positioned_controller.dart';

class AnimatedPositionedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedPositionedController>(
      () => AnimatedPositionedController(),
    );
  }
}
