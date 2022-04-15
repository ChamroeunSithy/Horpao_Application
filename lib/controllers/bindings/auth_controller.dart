import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horpao_application/Screen/dashboard_screen.dart';
import 'package:horpao_application/controllers/user_controller.dart';
import 'package:horpao_application/widgets/snackbar.dart';
import '../../models/user.dart';
import '../../services/database.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Rxn<User> _firebaseUser = Rxn<User>();

  User? get user => _firebaseUser.value;

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser({
    required String fname,
    required String name,
    required String email,
    required String password,
    required String confirmpassword,
    required String dob,
    required String phone,
    required String salary,
  }) async {
    if (password == confirmpassword) {
      try {
        UserCredential _authResult = await _auth.createUserWithEmailAndPassword(
            email: email.trim(), password: password);

        //create a user in firestore
        UserModel _user = UserModel(
          id: _authResult.user!.uid,
          fname: fname,
          name: name,
          email: email,
          dob: dob,
          phone: phone,
          salary: salary,
        );
        if (await Database().createNewUser(_user)) {
          Get.find<UserController>().user = _user;
          Get.to(DashBoard());
        }
      } catch (e) {
        debugPrint(e.toString());
        Get.snackbar(
          'Error creating account',
          e.toString(),
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } else {
      return ShowSnackBar().showsnackbarTop(
        'Invalid password',
        'Please check your password again!',
      );
    }
  }

  void logIn(String email, String password) async {
    try {
      UserCredential _authResult = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      Get.find<UserController>().user =
          await Database().getUser(_authResult.user!.uid);
    } catch (e) {
      Get.snackbar(
        'Error login account',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signOut() async {
    try {
      await _auth.signOut();
      Get.find<UserController>().clear();
    } catch (e) {
      debugPrint(e.toString());
      Get.snackbar(
        'Error signout',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
