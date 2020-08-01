import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper({@required this.url});
  final String url;

  Future getWeatherData() async {
    http.Response response = await http.get(url);
    var jsonData = response.body;
    if (response.statusCode == 200) {
      return jsonDecode(jsonData);
    } else
      print(response.statusCode);
  }
}
