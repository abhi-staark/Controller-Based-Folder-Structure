import 'package:demoapp/controllers/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// This file defines the Login page's UI and logic. It uses a controller (LoginController)
/// to handle authentication logic, and the page itself handles user input and button actions.

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Obx(() {
        return _loginController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Center(
                child: ElevatedButton(
                  onPressed: () {
                    _loginController.login('username', 'password');
                  },
                  child: Text('Login'),
                ),
              );
      }),
    );
  }
}
