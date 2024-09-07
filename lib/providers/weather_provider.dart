import 'package:flutter/material.dart';
import '../services/api_service.dart';

class WeatherProvider with ChangeNotifier {
  List<String> _weatherData = [];
  bool _isLoading = false;

  List<String> get weatherData => _weatherData;
  bool get isLoading => _isLoading;

  Future<void> fetchWeather(String city) async {
    _isLoading = true;
    notifyListeners();

    final data = await ApiService.getWeather(city);
    if (data != null) {
      _weatherData = [data['weather'][0]['description']]; // Example; modify as needed
    } else {
      _weatherData = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
