abstract class ApiServices {
  static const HOST = "https://coral-tracking.herokuapp.com/api/v1/";

  // area
  static const POST_AREA = "${HOST}area";
  static const GET_AREAS = "${HOST}areas";
  static const GET_DETAIL_AREA = "${HOST}area/";
  static const UPDATE_AREA = "${HOST}area/";
  static const REMOVE_AREA = "${HOST}area/";

  // coral
  static const POST_CORAL = "${HOST}coral";
  static const GET_CORALS = "${HOST}corals";

  // upload file
  static const UPLOAD_FILE = "${HOST}file";
}
