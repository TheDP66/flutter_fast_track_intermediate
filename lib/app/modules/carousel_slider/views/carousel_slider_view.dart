import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/carousel_slider_controller.dart';

class CarouselSliderView extends GetView<CarouselSliderController> {
  const CarouselSliderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselSliderView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              onPageChanged: (index, reason) => controller.index.value = index,
            ),
            items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map(
              (i) {
                return Container(
                  width: 230,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "$i",
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                );
              },
            ).toList(),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].asMap().entries.map(
                (entry) {
                  return GestureDetector(
                    onTap: () => controller.carouselC.animateToPage(entry.key),
                    child: Container(
                      width: 12,
                      height: 12,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(
                            controller.index == entry.key ? 0.9 : 0.4),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
