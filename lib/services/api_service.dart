import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/country_model.dart';

class ApiService {
  static const String baseUrl = 'https://restcountries.com/v3.1';

  static Future<Country?> getCountryByName(String name) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/name/$name'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return Country.fromJson(data[0]);
      }
    } catch (e) {
      print('Error: $e');
    }
    return null;
  }
}
