import 'package:correcting_system/models/material_model.dart';
import 'package:correcting_system/models/question_bank_model.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_colors.dart';

class MaterialsScreenScreen extends StatelessWidget {
  MaterialsScreenScreen({super.key});
  List<MaterialModel> materialModelList = [
    MaterialModel(
      name: 'math',
      questionBank: QuestionBankModel(
        question: 'question',
        difficulty: 'difficulty',
        answer: [
          'anwer1',
          'anwer2',
          'anwer3',
        ],
      ),
    ),
    MaterialModel(
      name: 'Software Engineer',
      questionBank: QuestionBankModel(
        question: 'question',
        difficulty: 'difficulty',
        answer: [
          'anwer1',
          'anwer2',
          'anwer3',
        ],
      ),
    ),
    MaterialModel(
      name: 'Software Development',
      questionBank: QuestionBankModel(
        question: 'question',
        difficulty: 'difficulty',
        answer: [
          'anwer1',
          'anwer2',
          'anwer3',
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(flex: 2),
                    const Text(
                      'Materials',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(flex: 3),
                  ],
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: materialModelList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text(
                          materialModelList[index].name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            color: AppColors.PrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
