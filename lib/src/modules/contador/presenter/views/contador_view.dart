import 'package:flutter/material.dart';

import '../controllers/contador_controller.dart';
import 'components/tabs/contador_one_tab.dart';
import 'components/tabs/contador_two_tab.dart';

class ContadorView extends StatelessWidget {
  final ContadorController controller;
  ContadorView({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: PageView(
        onPageChanged: (index) {
          if (index == 0) {
            controller.setInterval(1);
          } else if (index == 1) {
            controller.setInterval(10);
          }
        },
        children: [
          ContadorOneTab(
            controller: controller,
          ),
          ContadorTwoTab(controller: controller),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: controller.increment,
            ),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: controller.decrement,
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: controller.reset,
            ),
          ],
        ),
      ),
    );
  }
}
