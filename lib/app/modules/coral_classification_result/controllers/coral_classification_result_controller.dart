import 'package:coral/app/data/models/classification_result_model.dart';
import 'package:coral/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

import '../../../data/provider/api_services_provider.dart';

class CoralClassificationResultController extends GetxController
    with StateMixin {
  ClassificationModel model = Get.arguments;
  var dioHttp = dio.Dio();

  @override
  void onInit() {
    change(false, status: RxStatus.success());
    super.onInit();
  }

  void handleSaveButton() async {
    change(false, status: RxStatus.loading());
    // upload image
    String fileNameUp = model.imageFile.path.split('/').last;

    final dio.FormData formData = dio.FormData.fromMap({
      "file": await dio.MultipartFile.fromFile(model.imageFile.path,
          filename: fileNameUp),
    });

    final upImageResp =
        await dioHttp.post(ApiServices.UPLOAD_FILE, data: formData);

    final imageLink = upImageResp.data["imageUrl"];

    var bodyReq = {
      "species": model.coralName,
      "percentage": model.numberAccuracy,
      "latitude": model.latitude,
      "longitude": model.longitude,
      "imageUrl": imageLink,
      "areaId": model.areaId,
    };

    await dioHttp.post(ApiServices.POST_CORAL, data: bodyReq);

    change(false, status: RxStatus.success());

    Get.snackbar("success", "upload success");
  }

  void handleBackToDashboardButton() {
    Get.offAllNamed(Routes.DASHBOARD);
  }
}
