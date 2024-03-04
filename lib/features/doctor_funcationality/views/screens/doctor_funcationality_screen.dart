import 'package:correcting_system/constant/app_colors.dart';
import 'package:correcting_system/constant/app_image.dart';
import 'package:flutter/material.dart';

import '../../../../constant/app_routes.dart';
import '../../../widgets/custom_button.dart';

class DoctorFuncationalityScreen extends StatelessWidget {
  const DoctorFuncationalityScreen({super.key});

  final List<String> titleGridViewList = const [
    'Add Question',
    'Question Bank',
    'Exams',
    'Materials',
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Doctor Funcationality',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Select the action you want to do',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onPressed: () {
                          // Navigator.of(context)
                          //     .pushNamed(AppRoutes.addQuestionScreen);
                        },
                        textButton: 'Make Exam',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Or select from the following',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: titleGridViewList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.pushNamed(
                              context, AppRoutes.addQuestionScreen);
                        } else if (index == 1) {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.questionBankScreen);
                        } else if (index == 2) {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.examsScreen);
                        } else {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.materialsScreen);
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 100,
                        width: 100,
                        alignment: Alignment.center,
                        child: Text(
                          titleGridViewList[index],
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
