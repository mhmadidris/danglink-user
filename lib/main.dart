import 'package:danglink/pages/account.dart';
import 'package:danglink/pages/orders.dart';
import 'package:danglink/pages/homepage.dart';
import 'package:danglink/pages/masuk/LoginPage.dart';
import 'package:danglink/pages/masuk/otp.dart';
import 'package:danglink/pages/masuk/RegisterPage.dart';
import 'package:danglink/pages/messagess/Chat.dart';
import 'package:danglink/pages/services/DangService/DangService.dart';
import 'package:danglink/pages/services/DangService/Tracking.dart';
import 'package:danglink/pages/services/DetailMerchant.dart';
import 'package:danglink/pages/services/HistoryOrders.dart';
import 'package:danglink/pages/services/OrderDetails.dart';
import 'package:danglink/pages/widgets/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:danglink/pages/masuk/onboarding.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(
    MaterialApp(
      theme: new ThemeData(
        scaffoldBackgroundColor: HexColor("F3F3F3"),
      ),
      home: BottomBar(),
      initialRoute: '/onboarding',
      routes: {
        // Masuk Folder
        '/onboarding': (context) => Onboarding(),
        '/LoginPage': (context) => const LoginPage(),
        '/RegisterPage': (context) => const RegisterPage(),
        '/otp': (context) => const OTP(),

        // First Pages
        '/main': (context) => BottomBar(),
        '/orders': (context) => const Orders(),
        '/account': (context) => const Account(),

        // Orders History
        '/HistoryOrders': (context) => const HistoryOrders(),

        // Services
        '/DangService': (context) => DangService(),

        // Services Profile
        '/DetailMerchant': (context) => DetailMerchant(),

        // Order Details
        '/OrderDetails': (context) => OrderDetails(),

        // Chat Page
        '/Chat': (context) => ChatPage(),

        // Tracking Orders
        '/TrackingOrders': (context) => Tracking(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      home: Homepage(),
    );
  }
}
