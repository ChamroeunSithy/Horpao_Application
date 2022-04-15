import 'package:get/instance_manager.dart';
import 'package:horpao_application/controllers/bindings/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
