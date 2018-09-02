import 'package:flutter/material.dart';


class BottomBarModel {
  final String title;
  final TextStyle normalStyle;
  final TextStyle selectStyle;
  final String selectImagePath;
  final String normalImagePath;

  BottomBarModel(this.title, this.normalStyle, this.selectStyle,
      this.selectImagePath, this.normalImagePath);
}
