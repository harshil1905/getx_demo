import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/home_page_getx/home_page_controller.dart';

class HomePageDemo extends StatelessWidget {
  const HomePageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    HomepageController homepageController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    homepageController.counter++;
                  },
                ),
                Obx(
                  () => Text(homepageController.counter.toString()),
                ),
                FloatingActionButton(
                  onPressed: () {
                    homepageController.counter--;
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    homepageController.countera + 2;
                  },
                ),
                Obx(
                  () => Text(homepageController.countera.toString()),
                ),
                FloatingActionButton(
                  onPressed: () {
                    homepageController.countera - 2;
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
