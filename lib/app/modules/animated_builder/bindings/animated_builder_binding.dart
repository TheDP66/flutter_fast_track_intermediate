import 'package:get/get.dart';

import '../controllers/animated_builder_controller.dart';

class AnimatedBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedBuilderController>(
      () => AnimatedBuilderController(),
    );
  }
}
