import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.validator,
    this.fillcolor,
    this.filled,
    this.hintStyle,
    this.textStyle,
    this.textInputAction,
  });
  TextEditingController controller;
  String hintText;
  TextInputType? keyboardType;
  Color? fillcolor;
  bool? filled;
  TextStyle? hintStyle;
  TextStyle? textStyle;
  String? Function(String?)? validator;
  TextInputAction? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 1,
      maxLines: 10,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        filled: true,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      controller: controller,
    );
  }
}
