import 'package:firebase_messaging/firebase_messaging.dart';

/// This service handles push notifications, such as Firebase Cloud Messaging (FCM).
/// It is responsible for setting up the notification service and handling incoming messages.

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  /// Initializes the notification service and listens for incoming messages.
  void initialize() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle incoming push notification
    });
  }
}
