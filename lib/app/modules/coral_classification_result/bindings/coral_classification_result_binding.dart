import 'package:get/get.dart';

import '../controllers/coral_classification_result_controller.dart';

class CoralClassificationResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoralClassificationResultController>(
      () => CoralClassificationResultController(),
    );
  }
}
