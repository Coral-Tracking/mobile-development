import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_area_controller.dart';

class DetailAreaView extends GetView<DetailAreaController> {
  const DetailAreaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailAreaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          controller.areaId,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
