import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/layout_builder_controller.dart';

class LayoutBuilderView extends GetView<LayoutBuilderController> {
  double widthDevice = Get.width;
  double heightDevice = Get.height;

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        title: const Text('LayoutBuilderView'),
        centerTitle: true,
      ),
      body: Container(
        width: Get.width * 0.5,
        height: heightBody * .5,
        color: Colors.amber,
        child: LayoutBuilder(
          builder: (context, constraints) {
            double widthConst = constraints.maxWidth;
            double heightConst = constraints.maxHeight;

            return Stack(
              children: [
                Container(
                  width: widthConst * .5,
                  height: heightConst,
                  color: Colors.red,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
