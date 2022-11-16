// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:contador/src/modules/contador/presenter/controllers/contador_controller.dart';
import 'package:flutter/material.dart';

class ContadorTwoTab extends StatelessWidget {
  final ContadorController controller;
  const ContadorTwoTab({super.key, 
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Center(
          child: Text(
            '${controller.store.entity.value}',
            style: const TextStyle(fontSize: 40),
          ),
        );
      },
    );
  }
}
