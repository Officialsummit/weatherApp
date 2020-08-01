import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> locationWeatherData() async {
    WeatherModel _weatherModel = WeatherModel();
    var _weatherModelData = await _weatherModel.getLocationWeatherData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: _weatherModelData,
      );
    }));
  }

  @override
  void initState() {
    super.initState();
    locationWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingFour(
              color: Colors.white,
              size: 100.0,
            ),
            Text("Fetching data , wait a white...")
          ],
        ),
      ),
    );
  }
}
