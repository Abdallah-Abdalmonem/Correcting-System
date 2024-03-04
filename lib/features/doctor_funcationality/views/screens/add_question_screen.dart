import 'package:correcting_system/constant/app_colors.dart';
import 'package:correcting_system/features/doctor_funcationality/views/screens/doctor_funcationality_cubit/doctorfuncationality_cubit.dart';
import 'package:correcting_system/features/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/custom_question_card.dart';

class AddQuestionScreen extends StatefulWidget {
  const AddQuestionScreen({super.key});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  late TextEditingController questionController;
  late TextEditingController answer1Controller;
  late TextEditingController answer2Controller;
  late TextEditingController answer3Controller;
  late GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    questionController = TextEditingController();
    answer1Controller = TextEditingController();
    answer2Controller = TextEditingController();
    answer3Controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorfuncationalityCubit(),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.PrimaryColor,
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: BlocConsumer<DoctorfuncationalityCubit,
                    DoctorfuncationalityState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    var cubit = DoctorfuncationalityCubit.get(context);
                    return Column(
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
                              'Add Question',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(flex: 3),
                          ],
                        ),
                        const SizedBox(height: 80),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)),
                          ),
                          child: Column(
                            children: [
                              CustomQuestionCard(
                                  title: 'Question',
                                  questionController: questionController),
                              const SizedBox(height: 10),
                              CustomQuestionCard(
                                  title: 'Answer 1',
                                  questionController: answer1Controller),
                              const SizedBox(height: 10),
                              CustomQuestionCard(
                                  title: 'Answer 2',
                                  questionController: answer2Controller),
                              const SizedBox(height: 10),
                              CustomQuestionCard(
                                  title: 'Answer 3',
                                  questionController: answer3Controller),
                              const SizedBox(height: 10),
                              CutomRowQuestionState(cubit: cubit),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomButton(
                                    textButton: 'Save Question',
                                    onPressed: () {
                                      // if (formKey.currentState!.validate()) {
                                      print('${cubit.selectedValue}');
                                      // }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CutomRowQuestionState extends StatelessWidget {
  const CutomRowQuestionState({super.key, required this.cubit});

  final DoctorfuncationalityCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: RadioListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: const Text('Easy'),
            value: 'easy',
            groupValue: cubit.selectedValue,
            onChanged: (value) {
              cubit.changeSelectedValue(value!);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: const Text('medium'),
            value: 'medium',
            groupValue: cubit.selectedValue,
            onChanged: (value) {
              cubit.changeSelectedValue(value!);
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            title: const Text('difficult'),
            value: 'difficult',
            groupValue: cubit.selectedValue,
            onChanged: (value) {
              cubit.changeSelectedValue(value!);
            },
          ),
        )
      ],
    );
  }
}
