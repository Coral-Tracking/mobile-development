import 'package:get/get.dart';

import '../controllers/add_area_controller.dart';

class AddAreaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAreaController>(
      () => AddAreaController(),
    );
  }
}
