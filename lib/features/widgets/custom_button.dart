//
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
  });
  final String textButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(
        textButton,
        style: const TextStyle(color: AppColors.PrimaryColor),
      ),
    );
  }
}
