import 'package:correcting_system/features/bottomNavigationBar/bottomNavigationBar_cubit/bottom_navigation_bar_cubit.dart';
import 'package:correcting_system/features/home/views/home_screen.dart';
import 'package:correcting_system/features/profile/views/profile_screen.dart';
import 'package:correcting_system/features/rating/views/rating_screen.dart';
import 'package:correcting_system/features/settings/views/seetings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../doctor_funcationality/views/screens/add_exam_screen.dart';
import '../../doctor_funcationality/views/screens/doctor_funcationality_screen.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBarCubit, BottomNavigationBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavItems,
            currentIndex: state.tabIndex,
            selectedItemColor: const Color(0xff6200ee),
            unselectedItemColor: const Color(0xff757575),
            onTap: (index) {
              BlocProvider.of<BottomNavigationBarCubit>(context)
                  .changeTab(tabIndex: index);
            },
          ),
        );
      },
    );
  }
}

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.book),
    label: 'Add Exam',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.star),
    label: 'Rating',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'Settings',
  ),
];

List<Widget> bottomNavScreen = <Widget>[
  HomeScreen(),
  DoctorFuncationalityScreen(),
  ProfileScreen(),
  RatingScreen(),
  SettingsScreen(),
];
