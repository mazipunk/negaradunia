import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationService {
  static Future<String?> getMyCountryName() async {
    try {
      final response = await http.get(Uri.parse('http://ip-api.com/json'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['country'];
      }
    } catch (e) {
      print('Error getting location: $e');
    }
    return null;
  }
}
