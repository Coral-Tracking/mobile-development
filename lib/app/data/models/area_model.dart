class AreaModel {
  String areaId;
  String areaName;
  String areaLocation;
  String areaMarkColor;

  AreaModel({
    required this.areaId,
    required this.areaLocation,
    required this.areaMarkColor,
    required this.areaName,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) {
    return AreaModel(
      areaId: json["_id"],
      areaLocation: json["location"],
      areaMarkColor: json["markColor"],
      areaName: json["areaName"],
    );
  }
}
