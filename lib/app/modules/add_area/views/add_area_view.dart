import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_area_controller.dart';

class AddAreaView extends GetView<AddAreaController> {
  const AddAreaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddAreaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddAreaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
