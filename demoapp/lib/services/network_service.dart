import 'package:http/http.dart' as http;

/// This service handles network interactions such as API calls.
/// It can be used to fetch, post, update, and delete data from a server.

class NetworkService {
  /// Makes a GET request to a given URL.
  Future<http.Response> getData(String url) async {
    return await http.get(Uri.parse(url));
  }

  // You can add methods for POST, PUT, DELETE, etc., here as well.
}
