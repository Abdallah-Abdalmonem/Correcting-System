import 'package:flutter/material.dart';

class CustomButtonWithBorderRedius extends StatelessWidget {
  const CustomButtonWithBorderRedius(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed,
      this.color});
  final String title;
  final void Function()? onPressed;
  final Icon icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      elevation: 10,
      backgroundColor: color,
      label: Text('$title'),
      extendedIconLabelSpacing: 0,
      icon: icon,
      isExtended: false,
    );
  }
}
