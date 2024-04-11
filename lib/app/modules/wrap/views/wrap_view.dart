import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wrap_controller.dart';

class WrapView extends GetView<WrapController> {
  const WrapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Media query
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.width;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;

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
        title: const Text('WrapView'),
        centerTitle: true,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        children: [
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
          Container(
            width: widthDevice * .15,
            height: 35,
            margin: const EdgeInsets.all(10),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
