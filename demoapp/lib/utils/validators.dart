/// This utility file contains input validation methods, such as email validation.
/// The methods here should be generic and reusable across multiple parts of the app.

class Validators {
  /// Validates if a string is a valid email.
  static bool isEmailValid(String email) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }
}
