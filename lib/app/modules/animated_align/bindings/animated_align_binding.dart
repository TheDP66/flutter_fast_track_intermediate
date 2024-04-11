import 'package:get/get.dart';

import '../controllers/animated_align_controller.dart';

class AnimatedAlignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedAlignController>(
      () => AnimatedAlignController(),
    );
  }
}
