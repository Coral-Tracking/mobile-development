import 'package:coral/app/data/models/area_model.dart';
import 'package:coral/app/data/models/coral_model.dart';
import 'package:coral/app/data/provider/api_services_provider.dart';
import 'package:get/get.dart';

class DetailAreaController extends GetxController with StateMixin {
  final AreaModel areaModel = Get.arguments;
  final getConnect = GetConnect();
  var models = <CoralModel>[].obs;

  @override
  void onReady() {
    fetchData();
    super.onReady();
  }

  void fetchData() async {
    change(false, status: RxStatus.loading());
    final url = "${ApiServices.GET_CORALS}?areaId=${areaModel.areaId}";
    final response = await getConnect.get(url);

    for (var element in response.body["data"]) {
      models.add(CoralModel.fromJson(element));
    }

    change(true, status: RxStatus.success());
  }
}
