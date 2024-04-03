import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxwork/controller/main_controller.dart';

class GetbuilderScreen extends StatelessWidget {
  final IncrementController1 incrementController1 =
      Get.put(IncrementController1());
  GetbuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<IncrementController>(
              init: IncrementController(),
              builder: (myController1) => Text(
                "${myController1.counter}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var myController = Get.find<IncrementController>();
                  myController.increamentCounter();
                },
                child: Text("Increament")),
            SizedBox(
              height: 30,
            ),
            Obx(() => Text("${incrementController1.counter1.value}")),
            ElevatedButton(
                onPressed: () {
                  incrementController1.increamentCounter();
                },
                child: Text("Obx Increament")),
          ],
        ),
      ),
    );
  }
}
