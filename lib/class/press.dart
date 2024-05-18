import 'package:flutter/material.dart';

class pageView extends StatelessWidget {
  String picture;
  pageView(this.picture);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Image.asset(picture),
    );
  }
}

abstract class DatabaseUsers {
  static List<Map<String, dynamic>> users = [];
}
