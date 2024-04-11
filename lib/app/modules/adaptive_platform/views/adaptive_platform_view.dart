import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adaptive_platform_controller.dart';

class AdaptivePlatformView extends GetView<AdaptivePlatformController> {
  const AdaptivePlatformView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetPlatform.isAndroid ? WidgetAndroid() : WidgetIos(),
      ),
    );
  }
}

class WidgetIos extends StatelessWidget {
  const WidgetIos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdaptiveView'),
        centerTitle: true,
      ),
      body: Center(
        // child: (MediaQuery.of(context).orientation == Orientation.portrait)
        child: Container(
          width: 300,
          height: 300,
          color: Colors.amber,
        ),
      ),
    );
  }
}

class WidgetAndroid extends StatelessWidget {
  const WidgetAndroid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdaptiveView'),
        centerTitle: true,
      ),
      body: Center(
        // child: (MediaQuery.of(context).orientation == Orientation.portrait)
        child: Container(
          width: 450,
          height: 300,
          color: Colors.red,
        ),
      ),
    );
  }
}
