import 'package:correcting_system/features/bottomNavigationBar/bottomNavigationBar_cubit/bottom_navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant/app_routes.dart';
import 'helper/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBarCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Correcting System',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: false,
        ),
        initialRoute: AppRoutes.bottomNavigationBar,
        routes: routes,
      ),
    );
  }
}
