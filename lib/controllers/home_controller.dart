import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<TextEditingController> textEditingController = TextEditingController().obs;
  var initialValue = "".obs;

  clearOrClearAll() {
    if (initialValue.isEmpty) {
      return "AC";
    } else {
      return "C";
    }
  }
}
