import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Screen two"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // without Getx//
                // Navigator.pop(context);
                Get.back();
              },
              child: Text("Go to Back Screen"))
        ],
      ),
    );
  }
}
