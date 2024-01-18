import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constant/app_image.dart';
import '../models/rating_model.dart';

class RatingScreen extends StatelessWidget {
  RatingScreen({super.key});

  List<RatingModel> items = [
    RatingModel(
        studentName: 'student name',
        rating: 3.5,
        comment: 'The exam is easy',
        studentImage: AppImage.person0,
        examName: 'Software Engineer'),
    RatingModel(
        studentName: 'student name',
        rating: 4.0,
        comment: 'Nice exam',
        studentImage: AppImage.person1,
        examName: 'Software Engineer'),
    RatingModel(
        studentName: 'student name',
        rating: 3.0,
        comment: 'The exam is very good',
        studentImage: AppImage.person2,
        examName: 'network'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Rating',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Divider(),
                padding: const EdgeInsets.only(top: 12),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    subtitle: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'exam: ${item.examName}',
                          ),
                          Text(item.comment),
                        ],
                      ),
                    ),
                    leading: CircleAvatar(
                        radius: 20,
                        foregroundImage: AssetImage(item.studentImage)),
                    title: Text(
                      item.studentName,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: RatingBarIndicator(
                      rating: item.rating,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
