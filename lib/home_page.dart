import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_page_controller.dart';
import 'package:getx/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final HomePageController controller = Get.put(HomePageController());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX State management Demo"),
        backgroundColor: Colors.green,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        tooltip: "Increment",
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/getx-form.png'),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'You have pushed button for many times :',
                style: TextStyle(fontSize: 17, color: Colors.green),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Obx(() {
                return Text('${controller.count}',
                    style: TextStyle(fontSize: 40));
              }),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(fontSize: 15),
              ),
              child: Text(
                'getx sanckbar',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                    title: 'GetX Dialog',
                    middleText: 'Are you sure?',
                    textConfirm: 'Yes',
                    confirmTextColor: Colors.white,
                    textCancel: 'No');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(fontSize: 15),
              ),
              child: Text(
                'getx alertDialog',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => SecondPage());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(fontSize: 15),
              ),
              child: Text(
                'Go to next page',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
