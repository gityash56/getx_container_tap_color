import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  final containerColor = Rx<Color>(Colors.red);

  final List<Color> _colors = [
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.yellow,
    Colors.cyan,
    Colors.purple,
    Colors.deepOrange,
    Colors.black,
    Colors.brown,
  ];

  // Method to change the container color to the next color in the list
  void changeColor() {
    containerColor.value =
        _colors[(_colors.indexOf(containerColor.value) + 1) % _colors.length];
  }

  void resetColor() {
    containerColor.value = Colors.red;
  }
}
