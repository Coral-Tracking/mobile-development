import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mapping_controller.dart';

class MappingView extends GetView<MappingController> {
  const MappingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MappingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MappingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
