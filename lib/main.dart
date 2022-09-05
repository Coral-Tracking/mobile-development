import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

late List<CameraDescription> allAvailableCameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  allAvailableCameras = await availableCameras();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
