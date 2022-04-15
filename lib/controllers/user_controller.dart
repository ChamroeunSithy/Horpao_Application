import 'package:get/get.dart';
import 'package:horpao_application/models/user.dart';

class UserController extends GetxController {
  final Rx<UserModel> _userModel = UserModel().obs;

  UserModel get user => _userModel.value;

  set user(UserModel value) => this._userModel.value = value;
  void clear() {
    _userModel.value = UserModel();
  }
}
