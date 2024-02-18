import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          Container(
              height: 150,
              child: Image.asset(
                "assets/logo/Logo_mark.png",
                fit: BoxFit.contain,
              )),
          TextField(
              decoration: InputDecoration(
            label: Text("Email"),
          )),
          SizedBox(
            height: 10,
          ),
          TextField(
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Password"),
                  suffix: IconButton(
                      onPressed: () {}, icon: Icon(Icons.remove_red_eye)))),
          SizedBox(
            height: 20,
          ),
          Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffec5f5f),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              )),
          SizedBox(
            height: 5,
          ),
          TextButton(onPressed: () {}, child: Text("Forget Password")),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 1,
                  color: Colors.black,
                ),
              ),
              Text("or"),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 1,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icon/facebook.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Log In with Facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 50, 149, 248),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icon/google.png"),
                    Text(
                      "Log In with Google",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              )),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(onPressed: () {}, child: Text("Sign Up"))
            ],
          )
        ],
      ),
    ));
  }
}
