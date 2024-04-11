import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/media_query_controller.dart';

class MediaQueryView extends GetView<MediaQueryController> {
  const MediaQueryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Media query
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.width;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQueryView'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: paddingTop,
          bottom: paddingBottom,
        ),
        width: widthDevice * 0.5,
        height: heightDevice - paddingTop - paddingBottom,
        color: Colors.red,
      ),
    );
  }
}
