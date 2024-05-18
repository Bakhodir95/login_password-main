import 'package:flutter/material.dart';

extension HeightExtension on double {
  SizedBox height() {
    return SizedBox(height: toDouble());
  }
}

extension WidthExtension on double {
  SizedBox width() {
    return SizedBox(width: toDouble());
  }
}
