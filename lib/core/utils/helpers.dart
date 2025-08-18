import 'package:flutter/material.dart';

class Helpers {
  static double getResponsiveFabSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 400) return 60;
    if (width < 600) return 70;
    return 80;
  }

  static double getContainersHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    if (height < 400) return 70;
    if (height < 600) return 80;
    return 90;
  }

  static double getAppBarHeight(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    if (height < 600) return 90;
    if (height < 800) return 100;
    return 110;
  }

  static double getAppBarSpacing(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    if (height < 600) return 8;
    if (height < 800) return 12;
    return 12;
  }

  static double getAppBarHorizontalPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 400) return 16;
    if (width < 600) return 20;
    return 24;
  }
}