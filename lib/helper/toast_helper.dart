import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constant/app_colors.dart';

class ToastHelper {
  static toastfailure({required String msg}) => Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 30,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);

  static toastSuccess({required String msg}) => Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 30,
      backgroundColor: AppColors.blue,
      textColor: Colors.white,
      fontSize: 16.0);
}
