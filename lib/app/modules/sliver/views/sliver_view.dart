import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sliver_controller.dart';

class SliverView extends GetView<SliverController> {
  const SliverView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.teal,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          SliverAppBar(
            //? AppBar akan selalu tampil
            pinned: true,
            //? AppBar dapat ditutup, tetapi saat di slide kebawah akan terbuka perlahan
            // floating: true,
            //? Floating harus true, AppBar dapat ditutup dan langsung terbuka saat di slide kebawah sedikit
            // snap: true,
            expandedHeight: 120,
            leading: const Icon(Icons.android),
            title: const Text('SliverView'),
            centerTitle: false,
            flexibleSpace: const Center(
              child: FlutterLogo(
                size: 200,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDelegateClass(
              id: "500",
              title: "Menu Makanan",
              maxExtent: 150,
              minExtent: 100,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: 200,
                  color: Color.fromARGB(
                    255,
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                  ),
                  child: Center(
                    child: Text(
                      "ITEM ${index + 1}",
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
            // delegate: SliverChildListDelegate(
            //   [
            //     Container(
            //       height: 200,
            //       color: Colors.red,
            //       child: const Center(
            //         child: Text(
            //           "ITEM 1",
            //           style: TextStyle(
            //             fontSize: 50,
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDelegateClass(
              id: "501",
              title: "Menu Minuman",
              maxExtent: 100,
              minExtent: 70,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 3,
            children: List.generate(
              21,
              (index) => Container(
                color: Color.fromARGB(
                  255,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
            ),
            // children: [
            //   Container(
            //     color: Colors.red,
            //   ),
            //   Container(
            //     color: Colors.amber,
            //   ),
            //   Container(
            //     color: Colors.yellow,
            //   ),
            //   Container(
            //     color: Colors.green,
            //   ),
            //   Container(
            //     color: Colors.blue,
            //   ),
            //   Container(
            //     color: Colors.purple,
            //   ),
            //   Container(
            //     color: Colors.pink,
            //   ),
            // ],
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyDelegateClass(
              id: "505",
              title: "Menu Snack",
              maxExtent: 70,
              minExtent: 40,
            ),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            children: List.generate(
              21,
              (index) => Container(
                color: Color.fromARGB(
                  255,
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyDelegateClass extends SliverPersistentHeaderDelegate {
  MyDelegateClass({
    required this.id,
    required this.title,
    required this.minExtent,
    required this.maxExtent,
  });

  double maxExtent, minExtent;
  String id, title;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // Ini merupakan Widget yang akan di build
    return Stack(children: [
      SizedBox(
        width: Get.width,
        child: Image.network(
          "https://picsum.photos/id/$id/500/500",
          fit: BoxFit.cover,
        ),
      ),
      Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
