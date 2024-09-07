import 'package:flutter/material.dart';

class WeatherDetailScreen extends StatelessWidget {
  final Map<String, dynamic> weatherData;

  WeatherDetailScreen({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Weather Details')),
      body: Center(
        child: Text(
          'Temperature: ${weatherData['main']['temp']}°C',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
