import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WelcomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              width: Get.width * 0.6,
              height: Get.width * 0.6,
              color: Colors.amber,
              child: Image.asset(
                "assets/logo/Logo.png",
                fit: BoxFit.cover,
              ),
            ),
            Text("Welcome to Ajheryuk"),
            Text("Best and popular apps for live education course from home"),
            ElevatedButton(onPressed: () {}, child: Text("Get Started"))
          ],
        ));
  }
}
