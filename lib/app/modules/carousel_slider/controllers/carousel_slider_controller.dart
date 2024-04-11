import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class CarouselSliderController extends GetxController {
  RxInt index = 0.obs;
  final CarouselController carouselC = CarouselController();
}
