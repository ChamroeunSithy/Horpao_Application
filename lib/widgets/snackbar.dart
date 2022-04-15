import 'package:get/get.dart';

class ShowSnackBar {
  void showsnackbarTop(String title, String message) {
    Get.snackbar(title, message, snackPosition: SnackPosition.TOP);
  }

  void showsnackbarBottom(String title, String message) {
    Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
  }
}
