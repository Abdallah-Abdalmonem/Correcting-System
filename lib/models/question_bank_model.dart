class QuestionBankModel {
  final String question;
  final String difficulty;
  final List<String> answer;

  QuestionBankModel({
    required this.question,
    required this.difficulty,
    required this.answer,
  });

  factory QuestionBankModel.fromJson(Map<String, dynamic> json) {
    return QuestionBankModel(
      question: json['question'],
      difficulty: json['difficulty'],
      answer: List<String>.from(json['answer']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'difficulty': difficulty,
      'answer': answer,
    };
  }
}
