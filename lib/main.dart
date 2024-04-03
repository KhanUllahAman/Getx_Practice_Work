import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxwork/getbuilder_screen.dart';
import 'package:getxwork/getstorage_screen.dart';
import 'package:getxwork/home_screen.dart';
import 'package:getxwork/next_screen.dart';
import 'package:getxwork/screen_two.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyGetStorage(),
      getPages: [
        GetPage(name: '/', page: () => MyGetStorage()),
        GetPage(name: '/one', page: () => NextScreen()),
        GetPage(name: '/two', page: () => ScreenTwo()),
      ],
    );
  }
}
