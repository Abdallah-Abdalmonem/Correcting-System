import 'package:flutter/material.dart';

class CustomProfileInfoRow extends StatelessWidget {
  const CustomProfileInfoRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: _singleItem(
                  title: 'Question',
                  value: 120,
                ),
              ),
              const VerticalDivider(),
              Expanded(
                child: _singleItem(
                  title: 'Exam',
                  value: 20,
                ),
              ),
              const VerticalDivider(),
              Expanded(
                child: _singleItem(
                  title: 'Material',
                  value: 3,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _singleItem({required String title, required int value}) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
        ],
      );
}
