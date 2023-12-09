import 'package:correcting_system/constant/app_colors.dart';
import 'package:correcting_system/features/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class InstructorScreen extends StatelessWidget {
  InstructorScreen({super.key});

  List<String> questionList = [
    '1.Which of the following is the best ddddd ddd ?',
    '2.Which of the following is the best ddddd ddd ?',
    '3.Which of the following is the best ddddd ddd ?',
  ];

  List<TextEditingController> questionController =
      List.generate(3, (index) => TextEditingController());
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      drawerEnableOpenDragGesture: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/images/person_image.jpg'),
          //   fit: BoxFit.cover,
          // ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.PrimaryColor,
              AppColors.PrimaryColor2,
              AppColors.amber,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return IconButton(
                            onPressed: () => Scaffold.of(context).openDrawer(),
                            icon: const Icon(Icons.menu),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    flex: 4,
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
                              SizedBox(height: 5),
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
                  Expanded(
                    child: Container(
                      // color: Colors.amber,
                      height: 200,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  pageController.previousPage(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                                child: Text('Back'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  pageController.nextPage(
                                      duration: Duration(seconds: 1),
                                      curve: Curves.linear);
                                },
                                child: Text('Next'),
                              ),
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



/*

ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Text('${QuestionList[index]}'),
                  ),
                  itemCount: QuestionList.length,
                ),

                */