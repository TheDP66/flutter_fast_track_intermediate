import 'package:get/get.dart';

import '../controllers/lottie_controller.dart';

class LottieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LottieController>(
      () => LottieController(),
    );
  }
}
