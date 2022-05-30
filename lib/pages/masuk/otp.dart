import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.15,
        automaticallyImplyLeading: true,
        title: Text("Verify Email"),
        centerTitle: true,
        backgroundColor: HexColor("#00AAE7"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Image(
                        image: AssetImage(
                          "assets/images/onboarding.png",
                        ),
                        fit: BoxFit.cover,
                        width: screenWidth * 0.5,
                      ),
                    ),
                    Text(
                      "Verify Your Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "We have sent an OTP on your email address",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w600,
                          color: HexColor("#808080"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                      child: TextFormField(
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin2FocusNode);
                        },
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                      child: TextFormField(
                        focusNode: pin2FocusNode,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin3FocusNode);
                        },
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                      child: TextFormField(
                        focusNode: pin3FocusNode,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin4FocusNode);
                        },
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.15,
                      height: screenHeight * 0.1,
                      child: TextFormField(
                        focusNode: pin4FocusNode,
                        onChanged: (value) {
                          pin4FocusNode.unfocus();
                        },
                        autofocus: false,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ResendCode(screenWidth: screenWidth, screenHeight: screenHeight),
              Container(
                width: screenWidth * 0.75,
                height: screenHeight * 0.070,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: HexColor("#00AAE7"),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/main", (route) => false);
                  },
                  child: Text(
                    "VERIFY",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResendCode extends StatelessWidget {
  const ResendCode({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      width: screenWidth,
      height: screenHeight * 0.065,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.75),
          bottom: BorderSide(color: Colors.grey, width: 0.75),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Didn't receive code?",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: HexColor("#808080"),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, dynamic value, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (value != 0) ...[
                  Text(
                    " ${value.toInt()}",
                    style: TextStyle(
                      color: HexColor("#FF6600"),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ] else ...[
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: HexColor("#00AAE7"),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
