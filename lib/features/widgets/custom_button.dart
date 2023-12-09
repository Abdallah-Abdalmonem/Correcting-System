import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.titleText, required this.onPressed});
  final String titleText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        elevation: MaterialStateProperty.all(10),
      ),
      child: Text(
        titleText,
        style: const TextStyle(letterSpacing: 2),
        textScaleFactor: 1.5,
      ),
    );
  }
}
