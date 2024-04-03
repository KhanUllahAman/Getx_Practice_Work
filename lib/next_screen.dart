import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  var name;
  NextScreen({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text("Screen One" + Get.arguments[0]),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // without Getx//
                // Navigator.pop(context);
                Get.toNamed('/two');
              },
              child: Text("Go to Screen 2"))
        ],
      ),  
    );
  }
}
