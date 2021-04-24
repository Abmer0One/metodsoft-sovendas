import 'package:flutter/material.dart';

class ComponentSize{

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 480 &&
        MediaQuery.of(context).size.height <= 800;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1080 &&
        MediaQuery.of(context).size.width <= 2160;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800;
  }

}