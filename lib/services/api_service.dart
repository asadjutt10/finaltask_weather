import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://api.openweathermap.org/data/2.5/weather';
  static const String _apiKey = 'e5e945a960f1dedd36a17556ae284aec'; // Replace with your API key

  static Future<Map<String, dynamic>?> getWeather(String city) async {
    final response = await http.get(Uri.parse('$_baseUrl?q=$city&appid=$_apiKey&units=metric'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Failed to fetch weather data');
      return null;
    }
  }
}
