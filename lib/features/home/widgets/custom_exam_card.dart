import 'package:flutter/material.dart';

class CustomExamCard extends StatelessWidget {
  const CustomExamCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black, width: 1),
        borderRadius: BorderRadius.circular(15),
        //set border radius more than 50% of height and width to make circle
      ),
      color: Colors.grey[300],
      child: Container(
        height: 150,
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'title',
              style: TextStyle(
                fontSize: 20,
                //  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
