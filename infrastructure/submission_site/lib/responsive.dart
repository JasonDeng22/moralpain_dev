import 'package:flutter/material.dart';

class Responsive {
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}