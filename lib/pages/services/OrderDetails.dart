import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.times,
            size: screenWidth * 0.05,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Siomay Bandung Mang Cecep",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: screenWidth * 0.0375,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddressWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            MyOrders(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/TrackingOrders");
        },
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.055,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              colors: <Color>[
                HexColor("0378A1"),
                HexColor("3085A4"),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.white,
                  size: screenWidth * 0.050,
                ),
              ),
              Text(
                "Proses Pemesanan",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.050,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 3.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// My Orders
class MyOrders extends StatelessWidget {
  const MyOrders({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pesanan saya",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              top: 7.5,
            ),
            width: screenWidth,
            height: screenHeight * 0.125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.075),
                  spreadRadius: 2.5,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 5,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                    ),
                    radius: screenWidth * 0.075,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: Text(
                        "Siomay Bandung Mang Cecep",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.w700,
                        ),
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
          ),
        ],
      ),
    );
  }
}

// Address Widget
class AddressWidget extends StatelessWidget {
  const AddressWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 15),
      padding: EdgeInsets.all(15),
      width: screenWidth,
      height: screenHeight * 0.225,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.075),
            spreadRadius: 2.5,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Muhammad Idris",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.0375,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "(+62)" + "85882311829",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.030,
                      color: Colors.black.withOpacity(0.35),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  radius: screenWidth,
                  backgroundColor: HexColor("ECE6E6"),
                  child: Icon(
                    FontAwesomeIcons.pencilAlt,
                    size: screenWidth * 0.035,
                    color: HexColor("00AAE7"),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.black.withOpacity(0.25),
            thickness: 1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Alamat",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.0325,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Perum Naga Hijau, Jl.Naga 5, Blok B 123, no.72. Kelurahan Naga Panjang, Kecamatan Naga Jaya, Kota Naga, Jawa Barat, Indonesia",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.030,
                  color: Colors.black.withOpacity(0.25),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
