import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailMerchant extends StatefulWidget {
  const DetailMerchant({Key? key}) : super(key: key);

  @override
  _DetailMerchantState createState() => _DetailMerchantState();
}

class _DetailMerchantState extends State<DetailMerchant> {
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
          "Detail Merchant",
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
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Icon(
              FontAwesomeIcons.solidHeart,
              color: HexColor("C4C4C4"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            child: Icon(
              FontAwesomeIcons.shareAlt,
              color: HexColor("C4C4C4"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            RowMenuWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            TabBarWidget(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/OrderDetails");
        },
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.055,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
          decoration: BoxDecoration(
            color: HexColor("00AAE7"),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.35),
                spreadRadius: 2.5,
                blurRadius: 5,
                offset: Offset(0, 1.5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              "Pesan Sekarang",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: screenWidth * 0.050,
                letterSpacing: 2.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Tab Bar Widget
class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              left: 5,
              right: 5,
              top: 7.5,
              bottom: 7.5,
            ),
            child: ButtonsTabBar(
              backgroundColor: HexColor("#00AAE7"),
              elevation: 0.0,
              radius: 50,
              height: screenHeight * 0.040,
              contentPadding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              unselectedBackgroundColor: Colors.white,
              unselectedLabelStyle: TextStyle(
                color: HexColor("#00AAE7"),
                fontWeight: FontWeight.w600,
                fontSize: screenWidth * 0.030,
                fontFamily: "Poppins",
              ),
              labelStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: screenWidth * 0.030,
                fontFamily: "Poppins",
              ),
              tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Recomendation",
                ),
                Tab(
                  text: "Promo",
                ),
                Tab(
                  text: "Best Seller",
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.5,
            child: TabBarView(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: screenWidth,
                      height: screenHeight * 0.125,
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 7.5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: CircleAvatar(
                              radius: screenWidth * 0.075,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pangsit Goreng",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Masih ada",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.0325,
                                  color: HexColor("ACD1AF"),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Rp." + "2.000" + "/biji",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: screenWidth * 0.035,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text("Recomendation"),
                ),
                Container(
                  child: Text("Promo"),
                ),
                Container(
                  child: Text("Best Seller"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Row Menu Widget
class RowMenuWidget extends StatelessWidget {
  const RowMenuWidget({
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
      height: screenHeight * 0.115,
      color: HexColor("54D2FF"),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: screenWidth * 0.30,
            height: screenHeight,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black.withOpacity(0.15),
                  width: 1.5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.yellowAccent,
                  size: screenWidth * 0.045,
                ),
                Column(
                  children: [
                    Text(
                      "4.7",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0325,
                      ),
                    ),
                    Text(
                      "120 Reviewers",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0275,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.30,
            height: screenHeight,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black.withOpacity(0.15),
                  width: 1.5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.solidClock,
                  color: Colors.red[500],
                  size: screenWidth * 0.045,
                ),
                Column(
                  children: [
                    Text(
                      "7 - 10 am",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0325,
                      ),
                    ),
                    Text(
                      "Operational Time",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0275,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.30,
            height: screenHeight,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black.withOpacity(0.15),
                  width: 1.5,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.locationArrow,
                  color: Colors.pink[300],
                  size: screenWidth * 0.045,
                ),
                Column(
                  children: [
                    Text(
                      "0.5 km",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0325,
                      ),
                    ),
                    Text(
                      "Distance",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0275,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: screenWidth * 0.30,
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.mapMarkedAlt,
                  color: Colors.indigo[500],
                  size: screenWidth * 0.045,
                ),
                Column(
                  children: [
                    Text(
                      "Galaxy City",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0325,
                      ),
                    ),
                    Text(
                      "Region",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: screenWidth * 0.0275,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Profile Widget
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
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
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: CircleAvatar(
              radius: screenWidth * 0.080,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Siomay Bandung Mang Cecep",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth * 0.0375,
                ),
              ),
              Text(
                "DangFood",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.25),
                  fontSize: screenWidth * 0.035,
                ),
              ),
              Container(
                width: screenWidth * 0.35,
                height: screenHeight * 0.025,
                decoration: BoxDecoration(
                  color: HexColor("FF6600"),
                  borderRadius: BorderRadius.circular(50),
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
                        color: Colors.white,
                        fontSize: screenWidth * 0.030,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
