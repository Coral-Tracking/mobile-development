import 'package:coral/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import '../widgets/area_card.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'List Area',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Information & Description'),
              const SizedBox(
                height: 10,
              ),
              controller.obx(
                (state) => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AreaCard(
                      redirect: () => Get.toNamed(
                        Routes.DETAIL_AREA,
                        arguments: controller.areas[index].areaId,
                      ),
                      areaName: controller.areas[index].areaName,
                      location: controller.areas[index].areaLocation,
                      markColor: controller.areas[index].areaMarkColor,
                    );
                  },
                  itemCount: controller.areas.length,
                ),
                onLoading: const CircularProgressIndicator(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
