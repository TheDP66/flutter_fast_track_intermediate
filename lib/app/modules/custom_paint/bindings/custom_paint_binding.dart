import 'package:get/get.dart';

import '../controllers/custom_paint_controller.dart';

class CustomPaintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomPaintController>(
      () => CustomPaintController(),
    );
  }
}
