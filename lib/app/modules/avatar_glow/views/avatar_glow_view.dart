import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:get/get.dart';

import '../controllers/avatar_glow_controller.dart';

class AvatarGlowView extends GetView<AvatarGlowController> {
  DecorationTween mydecoration = DecorationTween(
    begin: BoxDecoration(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(100),
    ),
    end: const BoxDecoration(
      color: Colors.teal,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AvatarGlowView'),
        centerTitle: true,
      ),
      body: Center(
        child: AvatarGlow(
          endRadius: 150,
          glowColor: Colors.blue,
          child: ClipOval(
            child: Container(
              width: 150,
              height: 150,
              child: Image.network(
                "https://picsum.photos/500/500",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
