import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/lottie_controller.dart';

class LottieView extends GetView<LottieController> {
  const LottieView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LottieView'),
        centerTitle: true,
      ),
      body: Center(
        child: Lottie.asset(
          "assets/lotties/hello.json",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
