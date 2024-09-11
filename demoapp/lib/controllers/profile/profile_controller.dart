import 'package:get/get.dart';

/// This controller manages the user's profile data and state.
/// It can handle actions like updating the user's name, fetching profile data, etc.

class ProfileController extends GetxController {
  var userName = ''.obs;

  /// Updates the user's name in the controller's state.
  void updateUserName(String name) {
    userName(name);
  }
}
