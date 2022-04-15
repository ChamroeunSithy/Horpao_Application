import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:horpao_application/models/user.dart';

class Database {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> createNewUser(UserModel user) async {
    try {
      await _firestore.collection("user").doc(user.id).set({
        "fname": user.fname,
        "name": user.name,
        "email": user.email,
        "dob": user.dob,
        "phone": user.phone,
        "salary": user.salary,
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<UserModel> getUser(String uid) async {
    try {
      DocumentSnapshot doc = await _firestore.collection("user").doc(uid).get();
      return UserModel.fromDocumentSnapshot(doc);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
