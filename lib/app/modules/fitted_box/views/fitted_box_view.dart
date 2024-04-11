import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fitted_box_controller.dart';

class FittedBoxView extends GetView<FittedBoxController> {
  const FittedBoxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBoxView'),
        centerTitle: true,
      ),
      body: Container(
        width: 200,
        height: 100,
        color: Colors.amber,
        padding: const EdgeInsets.all(5),
        child: const Center(
          child: FittedBox(
            child: Text(
              "Helloooooooooooooooo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
