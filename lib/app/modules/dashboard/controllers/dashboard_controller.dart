import 'package:coral/app/data/models/area_model.dart';
import 'package:coral/app/data/provider/api_services_provider.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController with StateMixin {
  var getConnect = GetConnect();
  var areas = <AreaModel>[];

  @override
  void onReady() {
    fetchAreas();

    super.onReady();
  }

  void fetchAreas() async {
    change(false, status: RxStatus.loading());
    var result = await getConnect.get(ApiServices.GET_AREAS);

    for (var element in result.body["data"]) {
      areas.add(AreaModel.fromJson(element));
    }

    change(false, status: RxStatus.success());
  }
}
