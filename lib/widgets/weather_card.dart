import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final List<String> weatherData;

  WeatherCard(this.weatherData);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: weatherData.map((data) => Text(data)).toList(),
        ),
      ),
    );
  }
}
