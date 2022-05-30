import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: HexColor("#00AAE7"),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(),
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        bottom: 1,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                            width: 1.5,
                          ),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/account");
                        },
                        child: Text(
                          "Hi, " + "Muhammad Idris",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.0325,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 7.5,
                          ),
                          child: CircleAvatar(
                            radius: screenWidth * 0.045,
                            backgroundColor:
                                HexColor("0087B8").withOpacity(0.65),
                            child: IconButton(
                              color: Colors.white,
                              iconSize: screenWidth * 0.035,
                              icon: Icon(
                                FontAwesomeIcons.search,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7.5,
                          ),
                          child: CircleAvatar(
                            radius: screenWidth * 0.045,
                            backgroundColor:
                                HexColor("0087B8").withOpacity(0.65),
                            child: IconButton(
                              color: Colors.white,
                              iconSize: screenWidth * 0.035,
                              icon: Icon(
                                FontAwesomeIcons.solidEnvelope,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.15,
                child: Center(
                  child: Container(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.090,
                    child: Text(
                      "Jangan lupa makan yaa!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w700,
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: HexColor("#00AAE7"),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              DangPayWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              ServiceWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              VoucherWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Voucher Widget
class VoucherWidget extends StatelessWidget {
  const VoucherWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 2.5,
        bottom: 10,
      ),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      width: screenWidth,
      height: screenHeight * 0.30,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Voucher",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.035,
                ),
              ),
              Container(
                width: screenWidth * 0.375,
                padding: EdgeInsets.only(
                  top: 1.5,
                ),
                child: Text(
                  "Kamu punya voucher nih, Yuk dipakai!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: HexColor("#5E5D5D"),
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.0275,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth,
            height: screenHeight * 0.15,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 7.5,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/dis.jpg',
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 7.5,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/dis.jpg',
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 7.5,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: screenWidth * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/dis.jpg',
                      width: screenWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Service Widget
class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 2.5,
        bottom: 10,
      ),
      width: screenWidth,
      height: screenHeight * 0.15,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 7.5,
                  ),
                  child: CircleAvatar(
                    radius: screenWidth * 0.065,
                    backgroundColor: HexColor("00BCFF"),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: screenWidth * 0.050,
                      icon: Icon(
                        FontAwesomeIcons.utensils,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Text(
                  "DangFood",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 7.5,
                  ),
                  child: CircleAvatar(
                    radius: screenWidth * 0.065,
                    backgroundColor: HexColor("00BCFF"),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: screenWidth * 0.050,
                      icon: Icon(
                        FontAwesomeIcons.glassMartiniAlt,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Text(
                  "DangDrink",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/DangService');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 7.5,
                  ),
                  child: CircleAvatar(
                    radius: screenWidth * 0.065,
                    backgroundColor: HexColor("00BCFF"),
                    child: Icon(
                      FontAwesomeIcons.wrench,
                      size: screenWidth * 0.050,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "DangService",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 7.5,
                  ),
                  child: CircleAvatar(
                    radius: screenWidth * 0.065,
                    backgroundColor: HexColor("00BCFF"),
                    child: IconButton(
                      color: Colors.white,
                      iconSize: screenWidth * 0.050,
                      icon: Icon(
                        FontAwesomeIcons.wallet,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Text(
                  "DangPay",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.030,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// DangPay Widget
class DangPayWidget extends StatelessWidget {
  const DangPayWidget({
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
      height: screenHeight * 0.15,
      margin: EdgeInsets.fromLTRB(
        screenWidth * 0.05,
        screenWidth * 0.040,
        screenWidth * 0.05,
        screenWidth * 0.040,
      ),
      decoration: BoxDecoration(
        color: HexColor("28C6FF"),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DangPay",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                Text(
                  "Rp." + "1.000.000",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.070,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.plus,
                          color: HexColor("28C6FF"),
                          size: screenWidth * 0.060,
                        ),
                        Text(
                          "Top Up",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: HexColor("28C6FF"),
                            fontSize: screenWidth * 0.030,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.070,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.history,
                          color: HexColor("28C6FF"),
                          size: screenWidth * 0.060,
                        ),
                        Text(
                          "History",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: HexColor("28C6FF"),
                            fontSize: screenWidth * 0.030,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.070,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.handHoldingUsd,
                          color: HexColor("28C6FF"),
                          size: screenWidth * 0.060,
                        ),
                        Text(
                          "Request",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: HexColor("28C6FF"),
                            fontSize: screenWidth * 0.030,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.070,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidQuestionCircle,
                          color: HexColor("28C6FF"),
                          size: screenWidth * 0.060,
                        ),
                        Text(
                          "Help",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: HexColor("28C6FF"),
                            fontSize: screenWidth * 0.030,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
