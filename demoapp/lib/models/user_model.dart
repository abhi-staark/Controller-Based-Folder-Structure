/// This file defines the User model, which represents the structure
/// of the user data. It is typically used to map API responses or 
/// local database records to a Dart object.

class UserModel {
  final String id;
  final String name;
  final String email;

  UserModel({required this.id, required this.name, required this.email});

  /// Factory method to create a UserModel from a JSON map.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}
