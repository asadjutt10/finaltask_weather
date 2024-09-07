import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/weather_provider.dart';
import '../widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Weather App')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter city name'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              weatherProvider.fetchWeather(_controller.text);
            },
            child: Text('Get Weather'),
          ),
          weatherProvider.isLoading
              ? CircularProgressIndicator()
              : Expanded(
            child: weatherProvider.weatherData.isNotEmpty
                ? WeatherCard(weatherProvider.weatherData)
                : Container(),
          ),
        ],
      ),
    );
  }
}
