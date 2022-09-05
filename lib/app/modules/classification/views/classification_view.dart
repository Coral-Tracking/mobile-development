import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classification_controller.dart';

class ClassificationView extends GetView<ClassificationController> {
  const ClassificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          FutureBuilder<void>(
            future: controller.initializeCamController,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(controller.camController);
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          FutureBuilder<void>(
            future: controller.initializeCamController,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: controller.takePicture,
                      child: const CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.camera,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("Ambil Gambar"),
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
    );
  }
}
