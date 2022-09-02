import 'package:get/get.dart';

class DetailAreaController extends GetxController {
  var areaId = Get.arguments;

  @override
  void onInit() {
    print(areaId);
    super.onInit();
  }
}
