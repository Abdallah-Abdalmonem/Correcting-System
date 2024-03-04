import 'package:correcting_system/models/question_bank_model.dart';

class MaterialModel {
  final String name;
  final QuestionBankModel questionBank;

  MaterialModel({
    required this.name,
    required this.questionBank,
  });

  factory MaterialModel.fromJson(Map<String, dynamic> json) {
    return MaterialModel(
      name: json['name'],
      questionBank: QuestionBankModel.fromJson(json['questionBank']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'questionBank': questionBank.toJson(),
    };
  }
}
