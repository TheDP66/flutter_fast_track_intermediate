import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/constrained_box_controller.dart';

class ConstrainedBoxView extends GetView<ConstrainedBoxController> {
  const ConstrainedBoxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBoxView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 300,
              minHeight: 100,
              maxWidth: 350,
              maxHeight: 150,
            ),
            child: Container(
              color: Colors.red,
              child: const Text(
                "Haloo",
                // overflow: TextOverflow.ellipsis,
                // maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
