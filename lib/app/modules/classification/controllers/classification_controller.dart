import 'package:camera/camera.dart';
import 'package:coral/app/routes/app_pages.dart';
import 'package:coral/main.dart';
import 'package:get/get.dart';

class ClassificationController extends GetxController {
  late CameraController camController;
  late Future<void> initializeCamController;
  final areaId = Get.arguments;

  var tempImagePath = "";

  @override
  void onInit() {
    super.onInit();

    camController = CameraController(
        allAvailableCameras[0], ResolutionPreset.medium,
        enableAudio: false);
    initializeCamController = camController.initialize();
  }

  @override
  void dispose() {
    camController.dispose();
    super.dispose();
  }

  void takePicture() async {
    await camController.setFlashMode(FlashMode.off);
    var tempImage = await camController.takePicture();
    tempImagePath = tempImage.path;

    Get.toNamed(Routes.PREVIEW_CAPTURE_IMAGE, arguments: {
      "imageFile": tempImagePath,
      "areaId": areaId,
    });
  }
}
