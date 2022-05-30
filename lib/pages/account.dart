import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#00AAE7"),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Account",
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AccountWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            AccountSettingsWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            InformationWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            LogoutWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ],
        ),
      ),
    );
  }
}

// Logout Widget
class LogoutWidget extends StatelessWidget {
  const LogoutWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.05,
        margin: EdgeInsets.only(
          top: 25,
        ),
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        color: Colors.white,
        child: Center(
          child: Container(
            width: screenWidth,
            child: Text(
              "Log Out",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.75),
                fontSize: screenWidth * 0.0325,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Information Widget
class InformationWidget extends StatelessWidget {
  const InformationWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 12.5,
          ),
          width: screenWidth,
          height: screenHeight * 0.060,
          color: Colors.transparent,
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.090,
                height: screenHeight * 0.040,
                margin: EdgeInsets.only(
                  right: 10.0,
                ),
                decoration: BoxDecoration(
                  color: HexColor("#00AAE7"),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  FontAwesomeIcons.infoCircle,
                  color: Colors.white,
                  size: screenWidth * 0.040,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More Information",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.030,
                    ),
                  ),
                  Text(
                    "Get some information about us",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.030,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.black.withOpacity(0.5),
                    size: screenWidth * 0.035,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "FAQ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: screenWidth * 0.035,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Account Settings Widget
class AccountSettingsWidget extends StatelessWidget {
  const AccountSettingsWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 12.5,
          ),
          width: screenWidth,
          height: screenHeight * 0.060,
          color: Colors.transparent,
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.090,
                height: screenHeight * 0.040,
                margin: EdgeInsets.only(
                  right: 10.0,
                ),
                decoration: BoxDecoration(
                  color: HexColor("#00AAE7"),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  FontAwesomeIcons.slidersH,
                  color: Colors.white,
                  size: screenWidth * 0.040,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: screenWidth * 0.030,
                    ),
                  ),
                  Text(
                    "Edit and manage your account details",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: screenWidth * 0.030,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.black.withOpacity(0.5),
                    size: screenWidth * 0.035,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: screenWidth * 0.035,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Orders",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: screenWidth * 0.035,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.05,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Voucher",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.75),
                      fontSize: screenWidth * 0.0325,
                    ),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: screenWidth * 0.035,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Account Widget
class AccountWidget extends StatelessWidget {
  const AccountWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      width: screenWidth,
      height: screenHeight * 0.15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.75,
            blurRadius: 2.5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15.0,
            ),
            child: CircleAvatar(
              radius: screenWidth * 0.080,
              child: Icon(
                FontAwesomeIcons.userAlt,
                color: Colors.white,
                size: screenWidth * 0.050,
              ),
              backgroundColor: HexColor("#00AAE7"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Muhammad Idris",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.040,
                ),
              ),
              Text(
                "idris3097@gmail.com",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.030,
                ),
              ),
              Text(
                "(+62) 858-8231-1829",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.030,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
