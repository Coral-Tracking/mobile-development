import 'package:get/get.dart';

import '../modules/add_area/bindings/add_area_binding.dart';
import '../modules/add_area/views/add_area_view.dart';
import '../modules/classification/bindings/classification_binding.dart';
import '../modules/classification/views/classification_view.dart';
import '../modules/coral_classification_result/bindings/coral_classification_result_binding.dart';
import '../modules/coral_classification_result/views/coral_classification_result_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/detail_area/bindings/detail_area_binding.dart';
import '../modules/detail_area/views/detail_area_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/mapping/bindings/mapping_binding.dart';
import '../modules/mapping/views/mapping_view.dart';
import '../modules/object_detection/bindings/object_detection_binding.dart';
import '../modules/object_detection/views/object_detection_view.dart';
import '../modules/preview_capture_image/bindings/preview_capture_image_binding.dart';
import '../modules/preview_capture_image/views/preview_capture_image_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      bindings: [
        HomeBinding(),
        DashboardBinding(),
        MappingBinding(),
      ],
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_AREA,
      page: () => const DetailAreaView(),
      binding: DetailAreaBinding(),
    ),
    GetPage(
      name: _Paths.ADD_AREA,
      page: () => const AddAreaView(),
      binding: AddAreaBinding(),
    ),
    GetPage(
      name: _Paths.CORAL_CLASSIFICATION_RESULT,
      page: () => const CoralClassificationResultView(),
      binding: CoralClassificationResultBinding(),
    ),
    GetPage(
      name: _Paths.MAPPING,
      page: () => const MappingView(),
      binding: MappingBinding(),
    ),
    GetPage(
      name: _Paths.CLASSIFICATION,
      page: () => const ClassificationView(),
      binding: ClassificationBinding(),
    ),
    GetPage(
      name: _Paths.OBJECT_DETECTION,
      page: () => const ObjectDetectionView(),
      binding: ObjectDetectionBinding(),
    ),
    GetPage(
      name: _Paths.PREVIEW_CAPTURE_IMAGE,
      page: () => const PreviewCaptureImageView(),
      binding: PreviewCaptureImageBinding(),
    ),
  ];
}
