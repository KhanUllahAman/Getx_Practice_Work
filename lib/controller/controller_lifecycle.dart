import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerlifeCycle extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print("OnInit is intailize");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("On Ready is Initailized");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("On close is initailized");
  }
}


