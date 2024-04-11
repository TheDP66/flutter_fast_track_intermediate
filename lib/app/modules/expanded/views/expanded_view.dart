import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/expanded_controller.dart';

class ExpandedView extends GetView<ExpandedController> {
  const ExpandedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Media query
    double heightDevice = MediaQuery.of(context).size.width;
    double paddingTop = MediaQuery.of(context).padding.top;

    AppBar myAppBar() {
      return AppBar(
        title: const Text("Home"),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpandedView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              const Expanded(
                child: ListTile(
                  tileColor: Colors.amber,
                  leading: Icon(Icons.abc_sharp),
                  title: Text("Judul"),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              )
            ],
          ),
        ],
      ),
    );
  }
}
