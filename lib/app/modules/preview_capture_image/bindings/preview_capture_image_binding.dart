import 'package:get/get.dart';

import '../controllers/preview_capture_image_controller.dart';

class PreviewCaptureImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewCaptureImageController>(
      () => PreviewCaptureImageController(),
    );
  }
}
