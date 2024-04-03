import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class IncrementController extends GetxController {
  int counter = 0;
  void increamentCounter() {
    counter++;

    update();
  }
}

class IncrementController1 extends GetxController {
  var counter1 = 0.obs;
  increamentCounter() {
    counter1++;
  }
}
