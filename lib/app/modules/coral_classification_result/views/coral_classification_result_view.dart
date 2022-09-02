import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/coral_classification_result_controller.dart';

class CoralClassificationResultView
    extends GetView<CoralClassificationResultController> {
  const CoralClassificationResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoralClassificationResultView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CoralClassificationResultView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
