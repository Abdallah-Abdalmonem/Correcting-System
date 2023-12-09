import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant/app_routes.dart';
import 'features/instructor_screen/instructor_cubit/instructor_cubit.dart';
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
      create: (context) => InstructorCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Correcting System',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.instructorScreen,
        routes: routes,
      ),
    );
  }
}
