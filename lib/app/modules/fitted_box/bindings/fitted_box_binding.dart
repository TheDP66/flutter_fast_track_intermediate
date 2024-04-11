import 'package:get/get.dart';

import '../controllers/fitted_box_controller.dart';

class FittedBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FittedBoxController>(
      () => FittedBoxController(),
    );
  }
}
