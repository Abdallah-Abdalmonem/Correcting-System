import 'package:correcting_system/features/doctor_funcationality/views/screens/doctor_funcationality_screen.dart';
import 'package:flutter/material.dart';

import '../features/doctor_funcationality/views/screens/add_exam_screen.dart';
import '../features/bottomNavigationBar/views/bottom_navigation_bar.dart';
import '../features/doctor_funcationality/views/screens/material_screen.dart';
import '../features/doctor_funcationality/views/screens/question_bank.dart';
import '../features/home/views/home_screen.dart';
import '../features/home/views/exams_screen.dart';
import '../features/profile/views/profile_screen.dart';
import '../features/rating/views/rating_screen.dart';
import '../features/settings/views/seetings_screen.dart';

class AppRoutes {
  // static const String login = '/login';
  // static const String register = '/register';
  static const String bottomNavigationBar = '/bottom_navigation_bar';
  static const String home = '/home';
  static const String addQuestionScreen = '/add_question_screen';
  static const String ratingScreen = '/rating_screen';
  static const String profile = '/profile_screen';
  static const String settings = '/settings_screen';
  static const String examsScreen = '/exams_screen';
  static const String doctorFuncationlityScreen =
      '/doctor_funcationlity_screen';
  static const String questionBankScreen = '/question_bank_screen';
  static const String materialsScreen = '/materials_screen';
}

Map<String, Widget Function(BuildContext)> routes = {
  // AppRoutes.login: (context) => LoginScreen(),
  // AppRoutes.register: (context) => RegisterScreen(),
  AppRoutes.bottomNavigationBar: (context) => const bottomNavigationBar(),
  AppRoutes.home: (context) => const HomeScreen(),
  AppRoutes.ratingScreen: (context) => RatingScreen(),
  AppRoutes.addQuestionScreen: (context) => AddExamScreen(),
  AppRoutes.profile: (context) => const ProfileScreen(),
  AppRoutes.settings: (context) => const SettingsScreen(),
  AppRoutes.examsScreen: (context) => const ExamsScreen(),
  AppRoutes.doctorFuncationlityScreen: (context) =>
      const DoctorFuncationalityScreen(),
  AppRoutes.questionBankScreen: (context) => const QuestionBankScreen(),
  AppRoutes.materialsScreen: (context) => MaterialsScreenScreen(),
};
