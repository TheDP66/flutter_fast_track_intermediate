import 'package:get/get.dart';

import '../controllers/hero_controller.dart';

class HeroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HeroControllerView>(
      () => HeroControllerView(),
    );
  }
}
