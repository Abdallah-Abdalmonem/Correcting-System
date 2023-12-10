import 'package:flutter/material.dart';

import '../features/addExam/views/screens/add_exam_screen.dart';
import '../features/bottomNavigationBar/views/bottom_navigation_bar.dart';
import '../features/home/views/home_screen.dart';
import '../features/home/views/my_exams_screen.dart';
import '../features/profile/views/profile_screen.dart';
import '../features/rating/views/rating_screen.dart';
import '../features/settings/views/seetings_screen.dart';

class AppRoutes {
  // static const String login = '/login';
  // static const String register = '/register';
  static const String bottomNavigationBar = '/bottom_navigation_bar';
  static const String home = '/home';
  static const String addExamScreen = '/AddExam_screen';
  static const String ratingScreen = '/rating_screen';
  static const String profile = '/profile_screen';
  static const String settings = '/settings_screen';
  static const String myExamsScreen = '/my_exams_screen';
}

Map<String, Widget Function(BuildContext)> routes = {
  // AppRoutes.login: (context) => LoginScreen(),
  // AppRoutes.register: (context) => RegisterScreen(),
  AppRoutes.bottomNavigationBar: (context) => bottomNavigationBar(),
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.ratingScreen: (context) => RatingScreen(),
  AppRoutes.addExamScreen: (context) => AddExamScreen(),
  AppRoutes.profile: (context) => ProfileScreen(),
  AppRoutes.settings: (context) => SettingsScreen(),
  AppRoutes.myExamsScreen: (context) => MyExamsScreen(),
};
