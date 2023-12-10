import 'package:carousel_slider/carousel_slider.dart';
import 'package:correcting_system/constant/app_routes.dart';
import 'package:flutter/material.dart';

import '../../../constant/app_colors.dart';
import '../widgets/custom_exam_card.dart';
import '../widgets/custom_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesList = [
      'assets/images/person_image.jpg',
      'assets/images/person2.jpg',
      'assets/images/person3.webp',
      'assets/images/person4.jpg',
    ];
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
              // Colors.amber,
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text(
                        'Correcting System',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: CustomSlider(imagesList: imagesList),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.library_books, color: Colors.grey[200]),
                      const SizedBox(width: 10),
                      Text(
                        'My Exams',
                        style: TextStyle(fontSize: 20, color: Colors.grey[300]),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.myExamsScreen);
                        },
                        child: const Text(
                          'show all',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CustomExamCard(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
