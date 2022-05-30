import 'package:flutter/material.dart';

class HistoryOrders extends StatefulWidget {
  const HistoryOrders({Key? key}) : super(key: key);

  @override
  _HistoryOrdersState createState() => _HistoryOrdersState();
}

class _HistoryOrdersState extends State<HistoryOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
    );
  }
}
