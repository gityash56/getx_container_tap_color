import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // final homeController = Get.find<HomeController>();  // Scoped access
  final homeController = Get.put(HomeController()); // Global access

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Container Color'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => InkWell(
                onTap: () => homeController.changeColor(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: homeController.containerColor.value,
                  ),
                  child: const Center(
                    child: Text(
                      'Tap Me',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                homeController.resetColor();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
