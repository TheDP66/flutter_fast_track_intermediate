import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/backdrop_filter_controller.dart';

class BackdropFilterView extends GetView<BackdropFilterController> {
  const BackdropFilterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilterView'),
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          width: 300,
          height: 300,
          color: Colors.grey[300],
          child: const FlutterLogo(
            size: 300,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(),
        ),
      ]),
    );
  }
}
