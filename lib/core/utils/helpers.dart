import 'package:flutter/material.dart';

class Helpers {
  static double getResponsiveFabSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 400) return 60;
    if (width < 600) return 70;
    return 80;
  }

  static double getContainersHeight(BuildContext context) {
    final width = MediaQuery.of(context).size.height;
    if (width < 400) return 70;
    if (width < 600) return 80;
    return 90;
  }
}
