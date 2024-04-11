import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flexible_controller.dart';

class FlexibleView extends GetView<FlexibleController> {
  const FlexibleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Media query
    double widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexibleView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Ukuran diukur melalui proporsi nilai flex
          Flexible(
            flex: 3,
            child: Container(
              width: widthDevice * 0.5,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              width: widthDevice * 0.5,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: widthDevice * 0.5,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
