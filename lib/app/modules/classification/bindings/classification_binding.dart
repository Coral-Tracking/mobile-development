import 'package:get/get.dart';

import '../controllers/classification_controller.dart';

class ClassificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClassificationController>(
      () => ClassificationController(),
    );
  }
}
