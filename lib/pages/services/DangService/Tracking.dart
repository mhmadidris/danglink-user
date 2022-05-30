import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Container(
            width: screenWidth * 0.085,
            height: screenHeight * 0.045,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.75),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: Offset(1, 3),
                ),
              ],
            ),
            child: Icon(
              FontAwesomeIcons.arrowLeft,
              size: screenWidth * 0.035,
              color: Colors.black,
            ),
          ),
        ),
        title: Text("Tracking"),
      ),
      body: SlidingUpPanel(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        maxHeight: screenHeight * 0.525,
        minHeight: screenHeight * 0.225,
        panel: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 25,
                ),
                width: screenWidth * 0.125,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    HeaderWidget(
                      screenWidth: screenWidth,
                    ),
                    Header2Widget(
                      screenWidth: screenWidth,
                    ),
                  ],
                ),
              ),
              AlamatWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              SimpanButtonWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              BantuanButtonWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ],
          ),
        ),
        body: FlutterMap(
          options: MapOptions(
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate:
                  "https://api.mapbox.com/styles/v1/mhmadidris/ckzoby4qb000014qna9to6w2f/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWhtYWRpZHJpcyIsImEiOiJja3pvYnQ2NjYxdHc4MnZueGdnOG41OXI3In0.1ZpLBiEfGVzGyiD4spB5rg",
              additionalOptions: {
                'accesToken':
                    'pk.eyJ1IjoibWhtYWRpZHJpcyIsImEiOiJja3pvYnQ2NjYxdHc4MnZueGdnOG41OXI3In0.1ZpLBiEfGVzGyiD4spB5rg',
                'id': 'mapbox.mapbox-streets-v8',
              },
              attributionBuilder: (_) {
                return Text("© OpenStreetMap contributors");
              },
            ),
/*           MarkerLayerOptions(
            markers: [
              Marker(
                width: 80.0,
                height: 80.0,
                point: latLng.LatLng(51.5, -0.09),
                builder: (ctx) => Container(
                  child: FlutterLogo(),
                ),
              ),
            ],
          ), */
          ],
        ),
      ),
    );
  }
}

// Bantuan Button Widget
class BantuanButtonWidget extends StatelessWidget {
  const BantuanButtonWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
      width: screenWidth,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColor("00AAE7"),
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(25),
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
              FontAwesomeIcons.headset,
              color: HexColor("00AAE7"),
              size: screenWidth * 0.0475,
            ),
          ),
          Text(
            "Bantuan",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: screenWidth * 0.0475,
              color: HexColor("00AAE7"),
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

// Simpan Button Widget
class SimpanButtonWidget extends StatelessWidget {
  const SimpanButtonWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 5),
      width: screenWidth,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        color: HexColor("00AAE7"),
        borderRadius: BorderRadius.circular(25),
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
              FontAwesomeIcons.receipt,
              color: Colors.white,
              size: screenWidth * 0.0475,
            ),
          ),
          Text(
            "Simpan Bukti",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: screenWidth * 0.0475,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

// Alamat Widget
class AlamatWidget extends StatelessWidget {
  const AlamatWidget({
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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black.withOpacity(0.15),
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.15),
            width: 1,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              "Alamat",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: screenWidth * 0.035,
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: screenWidth * 0.10,
                  color: HexColor("00AAE7"),
                ),
              ),
              Container(
                width: screenWidth * 0.80,
                child: Text(
                  "Perum Naga Hijau, Jl.Naga 5, Blok B 123, no.72. Kelurahan Naga Panjang, Kecamatan Naga Jaya, Kota Naga, Jawa Barat, Indonesia",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: screenWidth * 0.030,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Header 2 Widget
class Header2Widget extends StatelessWidget {
  const Header2Widget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "DL-2121212213",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.0275,
                  color: Colors.black.withOpacity(0.50),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Sedang berjalan",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.0275,
                  color: HexColor("00AAE7"),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sabtu, 12 Feb 2022",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.0275,
                  color: Colors.black.withOpacity(0.50),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "14:25",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: screenWidth * 0.0275,
                  color: Colors.black.withOpacity(0.50),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Header Widget
class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                  ),
                  radius: screenWidth * 0.060,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Siomay Bandung Mang Cecep",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.0325,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "DangFood",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: screenWidth * 0.0325,
                      color: Colors.grey.withOpacity(0.75),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Chat");
                },
                icon: CircleAvatar(
                  backgroundColor: HexColor("00AAE7"),
                  radius: screenWidth * 0.075,
                  child: Icon(
                    FontAwesomeIcons.sms,
                    size: screenWidth * 0.035,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: CircleAvatar(
                  backgroundColor: HexColor("00AAE7"),
                  radius: screenWidth * 0.075,
                  child: Icon(
                    FontAwesomeIcons.phone,
                    size: screenWidth * 0.035,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
