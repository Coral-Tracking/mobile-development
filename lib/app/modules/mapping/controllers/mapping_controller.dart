import 'dart:async';

import 'package:coral/app/data/models/coral_model.dart';
import 'package:coral/app/data/provider/api_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MappingController extends GetxController with StateMixin {
  Completer<GoogleMapController> mapsController = Completer();
  final getConnect = GetConnect();

  late CameraPosition firstLocation;
  late LatLng usermaps;
  var loadStatus = "".obs;
  Set<Marker> marks = {};

  @override
  void onInit() {
    assignValue();

    super.onInit();
  }

  Future fetchData() async {
    loadStatus.value = "load data from api";
    final response = await getConnect.get(ApiServices.GET_CORALS);
    List<CoralModel> corals = [];

    for (var element in response.body["data"]) {
      corals.add(CoralModel.fromJsonCorals(element));
    }

    marks = corals
        .map(
          (e) => Marker(
            markerId: MarkerId(e.id),
            position: LatLng(
              double.parse(e.latitude),
              double.parse(e.longitude),
            ),
            icon: BitmapDescriptor.defaultMarkerWithHue(
              HSVColor.fromColor(
                Color(
                  int.parse(
                        e.markColor!.substring(1, 7),
                        radix: 16,
                      ) +
                      0xFF000000,
                ),
              ).hue,
            ),
          ),
        )
        .toSet();
  }

  void assignValue() async {
    change(false, status: RxStatus.loading());

    fetchData().then((value) async {
      var position = await _determinePosition();

      usermaps = LatLng(position.latitude, position.longitude);

      loadStatus.value = "get map location";
      firstLocation = CameraPosition(
        bearing: 0,
        target: usermaps,
        tilt: 0,
        zoom: 5,
      );

      change(false, status: RxStatus.success());
      return null;
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    loadStatus.value = "get user location";

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }
}
