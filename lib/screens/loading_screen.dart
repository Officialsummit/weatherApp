import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String data = "lat lon";
  Future<String> getCurrentLocation() async {
    Position poosition = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(poosition);
    return "$poosition";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
            child: RaisedButton(
          onPressed: () {},
          child: Text("Get Location"),
        )),
      ),
    );
  }
}
