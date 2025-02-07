import 'dart:convert';

import 'package:http/http.dart' as http;

class AppClient<T> {
  final http.Client _client = http.Client();

  Future<T?> get(String path) async {
    try {
      var response = await _client.get(Uri.parse(path));

      if (response.statusCode == 200) {
        return jsonDecode(response.body) as T;
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    } finally {
      _client.close();
    }
  }
}
