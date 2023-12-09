import 'package:flutter/material.dart';

import '../features/instructor_screen/views/screens/instructor_screen.dart';

class AppRoutes {
  // static const String login = '/login';
  // static const String register = '/register';
  // static const String profile = '/profile';
  static const String instructorScreen = '/instructor_screen';
  // static const String home = '/home';
  // static const String bottomNavigationBar = '/bottom_navigationbarscreen';
}

Map<String, Widget Function(BuildContext)> routes = {
  // AppRoutes.login: (context) => LoginScreen(),
  // AppRoutes.register: (context) => RegisterScreen(),
  AppRoutes.instructorScreen: (context) => InstructorScreen(),
  // AppRoutes.profile: (context) => ProfileScreen(),
  // AppRoutes.home: (context) => HomeScreen(),
  // AppRoutes.bottomNavigationBar: (context) => BottomNavigationBarScreen(),
};
