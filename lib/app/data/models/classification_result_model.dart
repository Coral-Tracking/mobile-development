import 'dart:io';

class ClassificationModel {
  File imageFile;
  String coralName;
  String accuracy;
  double numberAccuracy;
  String areaId;
  String latitude;
  String longitude;

  ClassificationModel(
      {required this.imageFile,
      required this.latitude,
      required this.longitude,
      required this.areaId,
      required this.numberAccuracy,
      required this.coralName,
      required this.accuracy});
}
