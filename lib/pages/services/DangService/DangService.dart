import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DangService extends StatefulWidget {
  const DangService({Key? key}) : super(key: key);

  @override
  _DangServiceState createState() => _DangServiceState();
}

class _DangServiceState extends State<DangService> {
  int activeIndex = 0;
  final urlImages = [
    "https://images.unsplash.com/photo-1644292955007-db55e0055b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1644292955007-db55e0055b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1644292955007-db55e0055b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1644292955007-db55e0055b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    "https://images.unsplash.com/photo-1644292955007-db55e0055b40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(FontAwesomeIcons.chevronLeft),
        ),
        title: Text(
          "DangService",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: screenWidth * 0.05,
            letterSpacing: 0.5,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Icon(
            FontAwesomeIcons.solidHeart,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
/*             Container(
              width: screenWidth,
              height: screenHeight * 0.25,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlmage = urlImages[index];

                      return buildImage(urlmage, index);
                    },
                    options: CarouselOptions(
                      height: 100,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                  ),
                  buildIndicator(),
                ],
              ),
            ), */
            Pedagang(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        color: Colors.grey,
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
      );
}

// Pedagang
class Pedagang extends StatelessWidget {
  const Pedagang({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 2.5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pedagang Terdekat",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                Text(
                  "Ayo pesan pedagang disekitarmu!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ],
            ),
          ),
          ListPedagang(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          ListPedagang(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          ListPedagang(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          ListPedagang(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
          ListPedagang(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
          ),
        ],
      ),
    );
  }
}

// List Pedagang
class ListPedagang extends StatelessWidget {
  const ListPedagang({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/DetailMerchant");
      },
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.15,
        margin: EdgeInsets.only(
          top: 7.5,
          bottom: 7.5,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 0.5,
              blurRadius: 1.5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5), // Image border
                  child: Image.network(
                    "https://images.unsplash.com/photo-1591543620767-582b2e76369e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=587&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 5,
                            ),
                            child: Icon(
                              FontAwesomeIcons.locationArrow,
                              color: HexColor("#00AAE7"),
                              size: screenWidth * 0.030,
                            ),
                          ),
                          Text(
                            "0.5 km from you",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: screenWidth * 0.030,
                              fontWeight: FontWeight.w700,
                              color: HexColor("#00AAE7"),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        child: Text(
                          "Siomay Bandung Mang Cecep",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.35,
                        height: screenHeight * 0.030,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 5,
                              ),
                              child: Icon(
                                FontAwesomeIcons.solidThumbsUp,
                                size: screenWidth * 0.030,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Super Merchant",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: screenWidth * 0.030,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              child: LikeButton(
                size: screenWidth * 0.060,
                circleColor: CircleColor(
                  end: Colors.redAccent,
                  start: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: new Container(
        width: screenWidth,
        height: screenHeight * 0.075,
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.70,
              height: screenHeight * 0.050,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    spreadRadius: 1.5,
                    blurRadius: 5,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 5,
                    ),
                    child: Icon(
                      FontAwesomeIcons.search,
                      size: screenWidth * 0.040,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Text(
                    "Cari apa yang kamu mau disini...",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.030,
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth * 0.225,
              height: screenHeight * 0.050,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: screenWidth * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Location",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.0225,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Jl.Mahoni 2",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.025,
                          color: Colors.black.withOpacity(0.75),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
