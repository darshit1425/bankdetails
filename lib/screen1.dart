import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'modal_deta/deta.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List website = [
    "https://www.onlinesbi.sbi/",
    "https://www.axisbank.com/",
    "https://www.hdfcbank.com/",
    "https://www.icicibank.com/",
    "https://www.pnbindia.in/",
    "https://bandhanbank.com/",
    "https://www.bankofbaroda.in/",
    "https://bankofindia.co.in/",
    "https://bankofmaharashtra.in/",
    "https://www.centralbankofindia.co.in/en",
  ];
  List contact = [
    "1800 103 1906",
    "1860 267 5810",
    "1800 222 1911",
    "1800 180 2222",
    "1800 1234 123",
    "1800 108 5252",
    "1800 258 44 55",
    "1800 425 1809",
    "1860 419 4561",
    "1800 202 6161",
  ];
  List images = [];

  List bank = [
    "State Bank of India(SBl)",
    "Axis Bank",
    "HDFC Bank",
    "ICICI Bank",
    "Punjab National Bank(PNB)",
    "Bandhan Bank",
    "Bank of Baroda(BOB)",
    "Bank of India(BOl)",
    "Bank of Maharashtra",
    "Central Bank on India",
  ];
  List color = [
    Color(0xff10B9F2),
    Color(0xffB2225D),
    Color(0xff144D90),
    Color(0xffC2412B),
    Color(0xff8D0E2F),
    Color(0xffC90D01),
    Color(0xfff8984e),
    Color(0xff019DD8),
    Color(0xff0189C7),
    Color(0xff3876C1),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.share,
          size: 35,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff3FBFC0),
        title: const Text("All Banks of India",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        actions: [
          Icon(
            Icons.settings_suggest,
            size: 35,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: bank.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListWidget(
              bank[index], color[index], website[index], contact[index]);
        },
      ),
    ),);
  }

  Widget ListWidget(
    String d1,
    Color bank1,
    String web,
    String call,
  ) {
    return InkWell(
      onTap: () {
        Modalbank m1 = Modalbank(d1, web, call);
        Navigator.pushNamed(context, 'details', arguments: m1);
      },
      child: Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: bank1,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${d1}",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
