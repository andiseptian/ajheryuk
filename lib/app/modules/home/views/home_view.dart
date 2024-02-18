import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 100,
            width: Get.width,
            // color: Colors.greenAccent,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: Stack(
                    children: [
                      Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            "assets/images/Avatar1.png",
                            fit: BoxFit.cover,
                          )),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.green,
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("hallo Samuel"),
                      Row(
                        children: [
                          Image.asset("assets/icon/award.png"),
                          Text("+1600 points"),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  // color: Colors.amber,
                  child: Stack(
                    children: [
                      Container(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                            "assets/icon/notification.png",
                            fit: BoxFit.contain,
                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromARGB(255, 175, 76, 76),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                storyItem(image: "assets/images/story1.jpg"),
                storyItem(image: "assets/images/story2.jpg"),
                storyItem(image: "assets/images/story3.jpg"),
                storyItem(image: "assets/images/story4.jpg"),
                storyItem(image: "assets/images/story5.jpg"),
                storyItem(image: "assets/images/story6.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Text(
                  "Upcoming ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Course of this week",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoryItem(
                  title: "All",
                  status: true,
                ),
                categoryItem(
                  title: "UI/UX",
                  status: false,
                ),
                categoryItem(
                  title: "Ilustration",
                  status: false,
                ),
                categoryItem(
                  title: "3D Animation",
                  status: false,
                ),
                categoryItem(
                  title: "Dart & Flutter",
                  status: false,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          // height: 300,
          // color: Colors.lightBlue,
          Column(
            children: [
              Container(
                child: CarouselSlider(
                  items: imageSliders,
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {}),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () =>
                        controller.carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      controller.carouselController == entry.key
                                          ? 0.9
                                          : 0.4)),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class categoryItem extends StatelessWidget {
  const categoryItem({
    required this.title,
    required this.status,
    super.key,
  });
  final String title;
  final bool status;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: status == true
            ? Color.fromARGB(255, 254, 97, 97)
            : const Color.fromARGB(255, 225, 225, 225),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: status == true
              ? Colors.white
              : Color.fromARGB(255, 135, 135, 135),
        ),
      ),
    );
  }
}

class storyItem extends StatelessWidget {
  const storyItem({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      width: 72,
      height: 72,
      // color: Colors.amberAccent,
      child: Stack(
        children: [
          Container(
            width: 70,
            height: 70,
            // color: Colors.amber,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 243, 115, 121),
                    width: 5,
                  )),
              child: Container(
                width: 70,
                height: 70,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff4dc9d1),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Image.asset(
                "assets/icon/video.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
