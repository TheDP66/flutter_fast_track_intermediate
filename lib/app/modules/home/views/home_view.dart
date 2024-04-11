import 'package:fast_track_intermediate/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // Media Query (GET)
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
    // Media query (Old Method)
    // double widthDevice = MediaQuery.of(context).size.width;
    // double heightDevice = MediaQuery.of(context).size.width;
    // double paddingTop = MediaQuery.of(context).padding.top;
    // double paddingBottom = MediaQuery.of(context).padding.bottom;

    // Media Query (GET)
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: const Text("Home"),
      );
    }

    // Mendapatkan tinggi AppBar, tetapi harus dipisah ke widget yang berbeda
    // height body = tinggi seluruh device - appbar - padding top
    double heightBody =
        heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text("Section 2 : Responsive and Adaptive"),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.MEDIA_QUERY);
                },
                child: const Text("Media Query"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FLEXIBLE);
                },
                child: const Text("Flexible"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.EXPANDED);
                },
                child: const Text("Expanded"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FITTED_BOX);
                },
                child: const Text("Fitted Box"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.WRAP);
                },
                child: const Text("Wrap"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.LAYOUT_BUILDER);
                },
                child: const Text("Layout Builder"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CONSTRAINED_BOX);
                },
                child: const Text("Constrained Box"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ADAPTIVE);
                },
                child: const Text("Adaptive Orientation"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ADAPTIVE_PLATFORM);
                },
                child: const Text("Adaptive Platform"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Section 3 : Animation"),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_CONTAINER);
                },
                child: const Text("Animated Container"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_ALIGN);
                },
                child: const Text("Animated Align"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_CROSSFADE);
                },
                child: const Text("Animated Crossfade"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_OPACITY);
                },
                child: const Text("Animated Opacity"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_POSITIONED);
                },
                child: const Text("Animated Positioned"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_POSITIONED);
                },
                child: const Text("Animated Positioned"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_BUILDER);
                },
                child: const Text("Animated Builder"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.ANIMATED_CONTAIN);
                },
                child: const Text("Animated Container"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.BOX_TRANSITION);
                },
                child: const Text("Box Transition"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.FADE_TRASITION);
                },
                child: const Text("Fade Transition"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Section 4 : Other"),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.AVATAR_GLOW);
                },
                child: const Text("Avatar Glow"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.LOTTIE);
                },
                child: const Text("Lottie"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.HERO);
                },
                child: const Text("Hero"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CLIP);
                },
                child: const Text("Clip"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.BACKDROP_FILTER);
                },
                child: const Text("Backdrop Filter"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CUSTOM_PAINT);
                },
                child: const Text("Custom Paint"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.CAROUSEL_SLIDER);
                },
                child: const Text("Carousel Slider"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Section 5 : Sliver"),
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.SLIVER);
                },
                child: const Text("Sliver"),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
