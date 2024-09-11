/// This utility file contains reusable helper methods, such as string manipulation.
/// These methods should not be tightly coupled to specific data models.

class Helpers {
  /// Capitalizes the first letter of a given string.
  static String capitalize(String text) {
    return "${text[0].toUpperCase()}${text.substring(1)}";
  }
}
