import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxwork/next_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 237, 243),
        title: Text(
          "Getx Work",
        ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dailog Alert"),
              subtitle: Text("Getx dailog alert with Getx"),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: "Are you sure you want to Delete",
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text("ok")),
                    cancel:
                        TextButton(onPressed: () {}, child: Text("Cancel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet"),
              subtitle: Text("Getx bottom sheet with Getx"),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 235, 245),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.light_mode,
                        ),
                        title: Text(
                          "Light Theme",
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.dark_mode,
                        ),
                        title: Text(
                          "Dark Theme",
                        ),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // without Getx//
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => NextScreen()));
                // with Getx//
                // Get.to(NextScreen(
                //   name: 'Aman Khan',
                // ));
                Get.toNamed("/one", arguments: [
                  'Hi', 
                  'this is getx work'
                  ]
                  );
              },
              child: Text("Go to Next Screen"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Getx Work", 'this is a Getx work',
              backgroundColor: Colors.blueGrey.shade500,
              snackPosition: SnackPosition.BOTTOM,
              colorText: Colors.white);
        },
        backgroundColor: Colors.blueGrey.shade500,
      ),
    );
  }
}
