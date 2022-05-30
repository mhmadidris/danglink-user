import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: HexColor("00AAE7"),
        child: Stack(
          /* fit: StackFit.expand, */
          children: [
            Positioned(
              top: -100,
              right: -100,
              child: CircleAvatar(
                backgroundColor: HexColor("0199D0").withOpacity(0.75),
                radius: screenWidth * 0.325,
              ),
            ),
            Container(
              width: screenWidth,
              height: screenHeight * 0.5,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: screenWidth * 0.0675,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Make your life easy',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '\nwith us!',
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: screenHeight * 0.20,
              child: Image.asset(
                'assets/images/logo-welcome.png',
                width: screenWidth,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: screenWidth,
        height: screenHeight * 0.225,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/LoginPage");
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                width: screenWidth,
                height: screenHeight * 0.060,
                decoration: BoxDecoration(
                  color: HexColor("00AAE7"),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.25,
                      blurRadius: 10,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontSize: screenWidth * 0.050,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.030,
                      color: Colors.black.withOpacity(0.50),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/RegisterPage');
                    },
                    child: Text(
                      " Sign up here",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: screenWidth * 0.030,
                        color: HexColor("00AAE7"),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
