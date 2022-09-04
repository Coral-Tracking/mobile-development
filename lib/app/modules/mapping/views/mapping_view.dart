import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/mapping_controller.dart';

class MappingView extends GetView<MappingController> {
  const MappingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping Area'),
        centerTitle: true,
      ),
      body: controller.obx(
        (state) => GoogleMap(
          markers: controller.marks,
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
          initialCameraPosition: controller.firstLocation,
          mapType: MapType.normal,
          onMapCreated: (mapC) {
            controller.mapsController.complete(mapC);
          },
          myLocationButtonEnabled: true,
        ),
        onLoading: Center(
          child: Column(
            children: [
              const CircularProgressIndicator(),
              Obx(
                () => Text(controller.loadStatus.value),
              )
            ],
          ),
        ),
      ),
    );
  }
}
