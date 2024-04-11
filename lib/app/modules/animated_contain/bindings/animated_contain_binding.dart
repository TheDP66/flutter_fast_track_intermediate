import 'package:get/get.dart';

import '../controllers/animated_contain_controller.dart';

class AnimatedContainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedContainController>(
      () => AnimatedContainController(),
    );
  }
}
