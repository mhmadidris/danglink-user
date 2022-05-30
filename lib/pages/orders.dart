import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#00AAE7"),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Orders",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: screenWidth * 0.05,
              letterSpacing: 2.5,
              fontWeight: FontWeight.w600,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          bottom: TabBar(
            labelStyle: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Colors.white,
                width: 4,
                style: BorderStyle.solid,
              ),
              insets: EdgeInsets.symmetric(
                horizontal: 25,
              ),
            ),
            tabs: [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Procces",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                AllOrdersWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
                AllOrdersWidget(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                ),
              ],
            ),
            ProccesOrdersWidget(
                screenWidth: screenWidth, screenHeight: screenHeight),
          ],
        ),
      ),
    );
  }
}

// Procces Orders Widget
class ProccesOrdersWidget extends StatelessWidget {
  const ProccesOrdersWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.175,
          margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 0.25,
                blurRadius: 2.5,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sat, 21 Jan 2021",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                    Text(
                      "Procces",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: HexColor("00AAE7"),
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: CircleAvatar(
                      radius: screenWidth * 0.060,
                      backgroundColor: HexColor("00BCFF"),
                      child: Icon(
                        FontAwesomeIcons.utensils,
                        color: Colors.white,
                        size: screenWidth * 0.050,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.5),
                        child: Text(
                          "Siomay Goreng Mang Cecep",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.0325,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.5),
                        child: Text(
                          "DangFood",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black.withOpacity(0.25),
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.030,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// All Orders Widget
class AllOrdersWidget extends StatelessWidget {
  const AllOrdersWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/HistoryOrders");
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.175,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 0.25,
                blurRadius: 2.5,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sat, 21 Jan 2021",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.5),
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                    Text(
                      "Procces",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: HexColor("00AAE7"),
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: CircleAvatar(
                      radius: screenWidth * 0.060,
                      backgroundColor: HexColor("00BCFF"),
                      child: Icon(
                        FontAwesomeIcons.utensils,
                        color: Colors.white,
                        size: screenWidth * 0.050,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.5),
                        child: Text(
                          "Siomay Goreng Mang Cecep",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.0325,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.5),
                        child: Text(
                          "DangFood",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black.withOpacity(0.25),
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.030,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
