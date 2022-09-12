import 'dart:io';

import 'package:coral/app/data/models/classification_result_model.dart';
import 'package:coral/app/data/provider/machine_learning_provider.dart';
import 'package:coral/app/routes/app_pages.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;

class PreviewCaptureImageController extends GetxController with StateMixin {
  final tempImagePath = Get.arguments["imageFile"];
  final areaId = Get.arguments["areaId"];
  late File tempImageFile;
  final dioHttp = dio.Dio();

  var coralName = "";
  double confidencePoint = 0.0;
  String confidencePercetage = "";

  @override
  void onInit() {
    change(true, status: RxStatus.success());
    tempImageFile = File(tempImagePath);

    super.onInit();
  }

  void doClassification() async {
    change(true, status: RxStatus.loading());

    String fileNameUp = tempImageFile.path.split('/').last;

    final dio.FormData formData = dio.FormData.fromMap({
      "image":
          await dio.MultipartFile.fromFile(tempImagePath, filename: fileNameUp),
    });

    dio.Response<dynamic> response;

    try {
      response = await dioHttp.post(MachineLearningProvider.CLASSIFICATION,
          data: formData);
    } catch (e) {
      response = await dioHttp.post(MachineLearningProvider.CLASSIFICATION,
          data: formData);
    }

    String predictedName = response.data["Name"];
    var arrPredicted = predictedName.split(" ");

    coralName = "${arrPredicted[0]} ${arrPredicted[1]}";
    var rep1 = arrPredicted.last.replaceAll("(", "");
    var rep2 = rep1.replaceAll(")", "");
    var rep3 = rep2.replaceAll("%", "");

    confidencePercetage = rep2;
    confidencePoint = double.parse(rep3);

    var userPosition = await _determinePosition();

    var arg = ClassificationModel(
      imageFile: tempImageFile,
      numberAccuracy: confidencePoint,
      coralName: coralName,
      accuracy: confidencePercetage,
      areaId: areaId,
      latitude: userPosition.latitude.toString(),
      longitude: userPosition.longitude.toString(),
    );

    change(true, status: RxStatus.success());

    Get.toNamed(Routes.CORAL_CLASSIFICATION_RESULT, arguments: arg);
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
