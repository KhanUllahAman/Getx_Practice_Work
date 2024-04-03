import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxwork/controller/controller_lifecycle.dart';

class ControllerlifecycleScreen extends StatelessWidget {
  const ControllerlifecycleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.delete<ControllerlifeCycle>();
            },
            child: Text("Close")),
      ),
    );
  }
}