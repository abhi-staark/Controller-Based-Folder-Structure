/// This utility file contains reusable formatting methods,
/// such as date or string formatters. These methods should be
/// independent of the app's specific logic so they can be reused elsewhere.

class Formatters {
  /// Formats a DateTime object into a human-readable string (dd/mm/yyyy).
  static String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}
