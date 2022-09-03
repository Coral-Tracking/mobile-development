import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/object_detection_controller.dart';

class ObjectDetectionView extends GetView<ObjectDetectionController> {
  const ObjectDetectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObjectDetectionView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ObjectDetectionView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
