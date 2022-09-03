import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../controllers/dashboard_controller.dart';
import '../widgets/area_card.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        controller: controller.refreshontroller,
        onRefresh: controller.handleRefresh,
        child: ListView(
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
                        model: controller.areas[index],
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
      ),
    );
  }
}
