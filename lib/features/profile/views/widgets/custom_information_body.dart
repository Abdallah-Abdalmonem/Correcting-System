import 'package:flutter/material.dart';

class CustomInformationBody extends StatelessWidget {
  CustomInformationBody({
    super.key,
  });
  List<String> _listLabels = ['Name', 'Email', "Phone"];
  List<String> _listInformation = [
    'Dr.Hamada Ibrahem',
    'hamadaIbrahem@gmail.com',
    "01123456789"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _listLabels.length,
      itemBuilder: (context, index) => Card(
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${_listLabels[index]}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(height: 11),
                Text(
                  "${_listInformation[index]}",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
