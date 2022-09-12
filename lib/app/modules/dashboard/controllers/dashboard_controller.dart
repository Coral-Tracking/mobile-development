import 'package:coral/app/data/models/area_model.dart';
import 'package:coral/app/data/provider/api_services_provider.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DashboardController extends GetxController with StateMixin {
  var getConnect = GetConnect();
  var areas = <AreaModel>[].obs;
  late RefreshController refreshontroller = RefreshController();

@override
  void onInit() {
    fetchAreas();
    refreshontroller.refreshCompleted();

    super.onInit();
  }

  void handleRefresh() async {
    refreshontroller.requestRefresh();
    fetchAreas();
    refreshontroller.refreshCompleted();
  }

  void fetchAreas() async {
    change(false, status: RxStatus.loading());
    var result = await getConnect.get(ApiServices.GET_AREAS);
    areas.clear();

    try {
      for (var element in result.body["data"]) {
        areas.add(AreaModel.fromJson(element));
      }
    } catch (e) {
      change(false, status: RxStatus.error());
    }

    change(false, status: RxStatus.success());
  }
}
