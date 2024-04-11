import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/adaptive_controller.dart';

class AdaptiveView extends GetView<AdaptiveController> {
  const AdaptiveView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return context.isPortrait ? const WidgetPotrait() : const WidgetLandscape();
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const WidgetPotrait();
        } else {
          return const WidgetLandscape();
        }
      },
    );
  }
}

class WidgetPotrait extends StatelessWidget {
  const WidgetPotrait({
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

class WidgetLandscape extends StatelessWidget {
  const WidgetLandscape({
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
