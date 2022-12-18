import 'package:flutter/material.dart';

class size_config {
  static double? screenwidth;
  static double? screenhight;
  static double? defultsize = 100;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenhight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defultsize = orientation == Orientation.landscape
        ? screenhight! * .024
        : screenwidth! * .024;
    print(defultsize);
  }
}
