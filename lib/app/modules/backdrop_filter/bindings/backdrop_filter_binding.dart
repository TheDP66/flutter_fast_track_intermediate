import 'package:get/get.dart';

import '../controllers/backdrop_filter_controller.dart';

class BackdropFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BackdropFilterController>(
      () => BackdropFilterController(),
    );
  }
}
