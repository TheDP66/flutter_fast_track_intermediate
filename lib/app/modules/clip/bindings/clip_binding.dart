import 'package:get/get.dart';

import '../controllers/clip_controller.dart';

class ClipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClipController>(
      () => ClipController(),
    );
  }
}
