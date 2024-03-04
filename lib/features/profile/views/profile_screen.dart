import 'package:correcting_system/features/profile/views/widgets/custom_profileinfo_row.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_image_profile.dart';
import 'widgets/custom_information_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 2, child: CustomImageProfile()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  const CustomProfileInfoRow(),
                  const SizedBox(height: 16),
                  CustomInformationBody(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
