import 'package:demoapp/controllers/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This file defines the Profile page UI. It uses ProfileController
/// to manage the user's profile data, like displaying and updating
/// the user's name.

class ProfilePage extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() {
              return Text(
                'User Name: ${_profileController.userName.value}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              );
            }),
            SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(labelText: 'Enter new username'),
              onSubmitted: (newName) {
                _profileController.updateUserName(newName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
