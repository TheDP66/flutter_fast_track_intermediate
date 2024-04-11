import 'package:get/get.dart';

import '../controllers/animated_crossfade_controller.dart';

class AnimatedCrossfadeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimatedCrossfadeController>(
      () => AnimatedCrossfadeController(),
    );
  }
}
