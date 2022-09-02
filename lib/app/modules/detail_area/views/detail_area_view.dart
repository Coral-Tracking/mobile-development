import 'package:coral/app/modules/detail_area/widgets/predict_history.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../dashboard/widgets/area_card.dart';
import '../controllers/detail_area_controller.dart';

class DetailAreaView extends GetView<DetailAreaController> {
  const DetailAreaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Detail Area',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text('Detail Informasi & Riwayat'),
          const SizedBox(
            height: 10,
          ),
          AreaCard(model: controller.areaModel),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text("Riwayat"),
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const PredictHistory(),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
