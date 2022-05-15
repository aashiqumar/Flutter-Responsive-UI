import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktop_body.dart';
import 'package:responsive/responsive/mobile_body.dart';
import 'package:responsive/responsive/responsive.dart';
import 'package:responsive/responsive/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: currentWidth < 600 ? Colors.purple[300] : Colors.green[300],
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
        tabletBody: MyTabletBody(),
        

      )
    );
  }
}
