import 'package:correcting_system/models/material_model.dart';

class DoctorModel {
  final String name;
  final String image;
  final String rating;
  final String phone;
  final String email;
  final List<MaterialModel> materialList;

  DoctorModel({
    required this.name,
    required this.image,
    required this.rating,
    required this.phone,
    required this.email,
    required this.materialList,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      name: json['name'],
      image: json['image'],
      rating: json['rating'],
      phone: json['phone'],
      email: json['email'],
      materialList: List<MaterialModel>.from(
          json['materialList'].map((x) => MaterialModel.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'rating': rating,
      'phone': phone,
      'email': email,
      'materialList': materialList.map((x) => x.toJson()).toList(),
    };
  }
}
