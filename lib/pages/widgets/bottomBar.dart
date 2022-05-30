import 'package:danglink/pages/account.dart';
import 'package:danglink/pages/orders.dart';
import 'package:danglink/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final List<Widget> _tabItems = [Orders(), Homepage(), Account()];
  int _activePage = 1;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: screenHeight * 0.075,
        child: BottomNavigationBar(
          currentIndex: _activePage,
          iconSize: screenWidth * 0.05,
          selectedLabelStyle: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: screenWidth * 0.0275,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: screenWidth * 0.025,
          ),
          backgroundColor: HexColor("#FDFDFD"),
          unselectedItemColor: HexColor("#cdd0e3"),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 2.5,
                ),
                child: Icon(
                  FontAwesomeIcons.receipt,
                ),
              ),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 2.5,
                ),
                child: Icon(
                  FontAwesomeIcons.home,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  bottom: 2.5,
                ),
                child: Icon(
                  FontAwesomeIcons.userAlt,
                ),
              ),
              label: "Account",
            ),
          ],
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
        ),
      ),
      body: _tabItems[_activePage],
    );
  }
}
