import 'package:get/get.dart';

import '../controllers/wrap_controller.dart';

class WrapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WrapController>(
      () => WrapController(),
    );
  }
}
