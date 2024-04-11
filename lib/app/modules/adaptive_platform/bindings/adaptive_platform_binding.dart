import 'package:get/get.dart';

import '../controllers/adaptive_platform_controller.dart';

class AdaptivePlatformBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdaptivePlatformController>(
      () => AdaptivePlatformController(),
    );
  }
}
