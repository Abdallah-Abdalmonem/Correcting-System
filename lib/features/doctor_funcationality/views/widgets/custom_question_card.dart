import 'package:flutter/material.dart';

import '../../../widgets/custom_textfield.dart';

class CustomQuestionCard extends StatelessWidget {
  const CustomQuestionCard({
    super.key,
    required this.questionController,
    required this.title,
  });

  final TextEditingController questionController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        CustomTextField(
          validator: (p0) {
            if (p0!.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
          hintText: 'Enter $title here...',
          controller: questionController,
        ),
      ],
    );
  }
}
