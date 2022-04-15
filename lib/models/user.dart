import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  String? fname;
  String? name;
  String? email;
  String? dob;
  String? phone;
  String? salary;

  UserModel({
    this.id,
    this.fname,
    this.name,
    this.email,
    this.dob,
    this.phone,
    this.salary,
  });

  UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    id = doc.id;
    fname = doc["fname"];
    name = doc["name"];
    email = doc["email"];
    dob = doc['dob'];
    phone = doc['phone'];
    salary = doc['salary'];
  }
}
