import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_password/pages/2second_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SecondPage()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContextcontext) {
    return Scaffold(
        body: Center(
      child: Image.asset("images/main2.png"),
    ));
  }
}