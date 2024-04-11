import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hero_controller.dart';

class HeroView extends GetView<HeroControllerView> {
  const HeroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroView'),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(
          tag: "Tag1",
          child: Image.network(
            "https://picsum.photos/id/237/200/300",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
