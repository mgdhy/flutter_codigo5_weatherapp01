import 'dart:convert';

import 'package:flutter_codigo5_weatherapp/models/weather_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class APIService{


  //Crear su modelo
  //Terminar de implementar la función

  Future<WeatherModel?> getDataWeather(String cityName) async{
    String path = "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      WeatherModel weatherModel = WeatherModel.fromJson(myMap);
      return weatherModel;
    }
    return null;
  }

  Future<WeatherModel?> getDataWeatherLocation(Position position) async{
    String path = "https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=";
    Uri _uri = Uri.parse(path);
    http.Response response = await http.get(_uri);
    if(response.statusCode == 200){
      Map<String, dynamic> myMap = json.decode(response.body);
      WeatherModel weatherModel = WeatherModel.fromJson(myMap);
      return weatherModel;
    }
    return null;
  }


}