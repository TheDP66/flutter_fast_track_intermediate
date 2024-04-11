import 'package:get/get.dart';

import '../controllers/avatar_glow_controller.dart';

class AvatarGlowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvatarGlowController>(
      () => AvatarGlowController(),
    );
  }
}
