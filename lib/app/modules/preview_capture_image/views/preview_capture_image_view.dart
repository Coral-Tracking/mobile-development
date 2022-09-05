import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/preview_capture_image_controller.dart';

class PreviewCaptureImageView extends GetView<PreviewCaptureImageController> {
  const PreviewCaptureImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Image'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Image.file(controller.tempImageFile),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: controller.doClassification,
                child: const Text("use this image"),
              ),
              const SizedBox(
                width: 40,
              ),
              OutlinedButton(
                onPressed: () => Get.back(),
                child: const Text("take another picture"),
              ),
            ],
          ),
          controller.obx((state) => const SizedBox.shrink())
        ],
      ),
    );
  }
}
