import 'package:get/get.dart';

import '../controllers/detail_area_controller.dart';

class DetailAreaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailAreaController>(
      () => DetailAreaController(),
    );
  }
}
