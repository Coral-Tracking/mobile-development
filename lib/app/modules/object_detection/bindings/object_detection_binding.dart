import 'package:get/get.dart';

import '../controllers/object_detection_controller.dart';

class ObjectDetectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ObjectDetectionController>(
      () => ObjectDetectionController(),
    );
  }
}
