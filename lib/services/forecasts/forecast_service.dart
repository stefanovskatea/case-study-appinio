import 'dart:convert';
import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../models/current_forecast_list_objects.dart';
import '../../models/city_list.dart';
import '../../models/current_forecast_list_objects.dart';

class ForecastService {
  bool currentForecastIsUpdated = false;
  bool detailedForecastIsUpdated = false;
  List<CurrentForecastDetails> allForecasts = [];
  List<DetailedForecastDetails> allDetailedForecasts = [];
  final DateFormat formatter = DateFormat('dd.MM');

  Map? responseMap;
  late List currentForecast;
  late List detailedForecast;
  late String condition;
  late int temperature;
  late int speed;
  late int cloudcover;
  late String formattedTime;
  late String formattedDate;

  Future<void> updateCurrentForecasts() async {

    if (currentForecastIsUpdated == false) {
      for (int i = 0; i < cities.length; i++) {
        var url = Uri.parse(
            'https://www.7timer.info/bin/astro.php?lon=${cities[i].lon}&lat=${cities[i].lat}&ac=0&unit=metric&output=json&tzshift=0');
        http.Response response = await http.get(url);
        responseMap = jsonDecode(response.body);
        currentForecast = responseMap!['dataseries'];
        temperature = currentForecast[0]['temp2m'];
        condition = currentForecast[0]['prec_type'];
        if (condition == 'none') {
          condition = 'dry';
        }
        allForecasts.add(
          CurrentForecastDetails(
            condition: condition,
            temperature: temperature,
            name: cities[i].cityName,
            didupdate: true,
            lat: cities[i].lat,
            lon: cities[i].lon,
          ),
        );
      }
      currentForecastIsUpdated = true;
    }
  }

  Future<void> updateDetailedForecast(lon, lat) async {
    if(detailedForecastIsUpdated == true) {
      allDetailedForecasts.clear();
      allDetailedForecasts = [];
    }
    var url = Uri.parse(
        'https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    print('https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    http.Response response = await http.get(url);
    responseMap = jsonDecode(response.body);
    detailedForecast = responseMap!['dataseries'];
    for(int index = 0; index<detailedForecast.length;index++){print(index);
    DateTime timenow = DateTime.now();
      timenow = timenow.add(Duration(hours:3+index * 3));
      print(timenow);
      formattedTime = DateFormat.Hm().format(timenow);
      formattedDate = formatter.format(timenow);
      temperature = detailedForecast[index]['temp2m'];
      condition = detailedForecast[index]['prec_type'];
      speed = detailedForecast[index]["wind10m"]["speed"];
      cloudcover = detailedForecast[index]['cloudcover'];
      if (condition == 'none') {
        condition = 'dry';
      }
      print(formattedTime);
      print(formattedDate);

      allDetailedForecasts.add(
        DetailedForecastDetails(condition: condition, temperature: temperature, timestamp: formattedTime, cloudcover: cloudcover,speed: speed,date: formattedDate));
    }
    detailedForecastIsUpdated = true;
  }
}


//for later use
//var nightstart = DateTime(2022, 05, 1, 21);
//var ComparableTime = int.parse(DateFormat.H().format(timenow));
