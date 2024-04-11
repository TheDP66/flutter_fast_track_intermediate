import 'package:get/get.dart';

import '../controllers/fade_trasition_controller.dart';

class FadeTrasitionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FadeTrasitionController>(
      () => FadeTrasitionController(),
    );
  }
}
