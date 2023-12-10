import 'package:flutter/material.dart';

class MyExamsScreen extends StatelessWidget {
  const MyExamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Exams'),
      ),
      body: Container(
        child: Center(
          child: Text('My Exams'),
        ),
      ),
    );
  }
}
