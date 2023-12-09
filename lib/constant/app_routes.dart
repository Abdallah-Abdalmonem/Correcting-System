import 'package:flutter/material.dart';

import '../features/addExam/views/screens/instructor_screen.dart';
import '../features/bottomNavigationBar/views/bottom_navigation_bar.dart';

class AppRoutes {
  // static const String login = '/login';
  // static const String register = '/register';
  // static const String profile = '/profile';
  static const String addExamScreen = '/AddExam_screen';
  // static const String home = '/home';
  static const String bottomNavigationBar = '/bottom_navigation_bar';
}

Map<String, Widget Function(BuildContext)> routes = {
  // AppRoutes.login: (context) => LoginScreen(),
  // AppRoutes.register: (context) => RegisterScreen(),
  AppRoutes.addExamScreen: (context) => AddExamScreen(),
  // AppRoutes.profile: (context) => ProfileScreen(),
  // AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.bottomNavigationBar: (context) => bottomNavigationBar(),
};
