import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';


class MyGetStorage extends StatefulWidget {
  const MyGetStorage({Key? key}) : super(key: key);

  @override
  State<MyGetStorage> createState() => _MyGetStorageState();
}

class _MyGetStorageState extends State<MyGetStorage> {
  TextEditingController emailcontroller = TextEditingController();
  final box = GetStorage();
  var name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Storage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailcontroller,
            ),
            ElevatedButton(
              onPressed: () {
                if(GetUtils.isEmail(emailcontroller.text)){
                  box.write('name', emailcontroller.text);
                print('Data written to GetStorage');
                Get.snackbar('Saved', 'Added data successfully',
                    snackPosition: SnackPosition.BOTTOM);
                } else {
                  Get.snackbar('Invalid email', 'please enter correct email',snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: const Text('Write'),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = box.read("name");
                });
              },
              child: const Text('Read'),
            ),
          ],
        ),
      ),
    );
  }
}
