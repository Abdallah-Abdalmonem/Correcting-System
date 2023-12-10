import 'package:carousel_slider/carousel_slider.dart';
import 'package:correcting_system/constant/app_colors.dart';
import 'package:correcting_system/features/widgets/custom_button2.dart';
import 'package:correcting_system/features/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class AddExamScreen extends StatelessWidget {
  AddExamScreen({super.key});

  List<String> questionList = [
    '1.Which of the following is the best ddddd ddd ?',
    '2.Which of the following is the best ddddd ddd ?',
    '3.Which of the following is the best ddddd ddd ?',
  ];

  List<TextEditingController> questionController =
      List.generate(3, (index) => TextEditingController());
  PageController pageController = PageController();
  List<String> imagesList = [
    'assets/images/person_image.jpg',
    'assets/images/person2.jpg',
    'assets/images/person3.webp',
    'assets/images/person4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.PrimaryColor,
              Colors.purple,
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  const Spacer(),
                  const Center(
                    child: Text(
                      'Add Exam',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 5,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'question ${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                CustomTextField(
                                  hintText: 'Enter question${index + 1}',
                                  controller: questionController[index],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 200,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CustomButton2(
                                color: AppColors.PrimaryColor,
                                title: 'Back',
                                onPressed: () {
                                  pageController.previousPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                                icon: const Icon(Icons.arrow_back_ios),
                              ),
                              CustomButton2(
                                color: AppColors.PrimaryColor,
                                title: 'Next',
                                onPressed: () {
                                  pageController.nextPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                                icon: const Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
