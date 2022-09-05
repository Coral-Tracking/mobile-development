import 'package:coral/app/data/provider/api_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:coral/app/routes/app_pages.dart';

class AddAreaController extends GetxController {
  final getConnect = GetConnect();

  final areaNameController = TextEditingController();
  final locationController = TextEditingController();
  final colorTextController = TextEditingController();

  var selectedColor = const Color(0xfff12ac3);

  void handleChangeColor(Color color) {
    colorTextController.text =
        colorToHex(color, includeHashSign: true, enableAlpha: false);
    refresh();
  }

  void handleSubmitButton() async {
    if (isEmptyTextField()) return;

    var response = await getConnect.post(
      ApiServices.POST_AREA,
      {
        "areaName": areaNameController.text,
        "location": locationController.text,
        "markColor": colorTextController.text
      },
      contentType: "Application/json",
    );

    if (response.isOk) {
      Get.snackbar("success", "success create area");
    } else {
      Get.snackbar("failed", "failed create area");
    }

    Get.toNamed(Routes.HOME);
    clearTextField();
  }

  bool isEmptyTextField() {
    return areaNameController.text.isEmpty ||
        locationController.text.isEmpty ||
        colorTextController.text.isEmpty;
  }

  void clearTextField() {
    areaNameController.clear();
    locationController.clear();
    colorTextController.clear();
  }
}
