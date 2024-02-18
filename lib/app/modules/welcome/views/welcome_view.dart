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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/logo/Logo.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Welcome to Ajheryuk",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Best and popular apps for live education course from home",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
                selectionColor: Color(0xFF8C8C8C),
              ),
              SizedBox(
                height: 75,
              ),
              Container(
                  width: Get.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffec5f5f),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20)))),
                  )),
            ],
          ),
        ));
  }
}
