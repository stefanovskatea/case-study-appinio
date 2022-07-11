import 'dart:convert';
import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../models/current_forecast_list_objects.dart';
import '../../models/city_list.dart';
import '../../models/current_forecast_list_objects.dart';

//TODO: create endpoint, units and output variables,

class ForecastService {
  final DateFormat formatter = DateFormat('EEE');
  final DateFormat timeformatter = DateFormat.Hm();//DateFormat('dd.MM');

  Future<List<CurrentForecastDetails>> fetchCurrentForecasts() async {
    DateTime timenow = DateTime.now();
    String timestamp = timeformatter.format(timenow).toString();
    List<CurrentForecastDetails> allForecasts = [];
    for (int i = 0; i < cities.length; i++) {
      var url = Uri.parse(
          'https://www.7timer.info/bin/astro.php?lon=${cities[i].lon}&lat=${cities[i].lat}&ac=0&unit=metric&output=json&tzshift=0');
      http.Response response = await http.get(url);
      Map? responseMap = jsonDecode(response.body);
      allForecasts.add(CurrentForecastDetails.fromJson(
          responseMap!['dataseries'][0], cities[i], timestamp));
    }
    return allForecasts;
  }

  Future<List<List<DetailedForecastDetails>>> fetchDetailedForecast(
      double lon, double lat, String name) async {
    List<List<DetailedForecastDetails>> allDetailedForecasts = [[], [], [],];
    var url = Uri.parse(
        'https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    http.Response response = await http.get(url);
    Map? responseMap = jsonDecode(response.body);
    for (int index = 0; index < responseMap!['dataseries'].length; index++) {
      DateTime timenow = DateTime.now();
      timenow = timenow.add(Duration(hours: index * 3));
      String formattedTime = DateFormat.Hm().format(timenow);
      String formattedDate = formatter.format(timenow);
      if (DateTime.now().day == timenow.day) {
        allDetailedForecasts[0].add(DetailedForecastDetails.fromJson(
            responseMap["dataseries"][index], formattedTime, 'Today', name));
      }
      if (DateTime.now().day + 1 == timenow.day) {
        allDetailedForecasts[1].add(DetailedForecastDetails.fromJson(
            responseMap["dataseries"][index],
            formattedTime,
            formattedDate,
            name));
      }
      if (DateTime.now().day + 2 == timenow.day) {
        allDetailedForecasts[2].add(DetailedForecastDetails.fromJson(
            responseMap["dataseries"][index],
            formattedTime,
            formattedDate,
            name));
      }
      if (DateTime.now().day + 3 == timenow.day) {
        if(allDetailedForecasts.length==3) {
          allDetailedForecasts.add([]);
        }
        allDetailedForecasts[3].add(DetailedForecastDetails.fromJson(
            responseMap["dataseries"][index],
            formattedTime,
            formattedDate,
            name));
      }
    }
    return allDetailedForecasts;
  }
}
