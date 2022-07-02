import 'dart:convert';
import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../models/current_forecast_list_objects.dart';
import '../../models/city_list.dart';
import '../../models/current_forecast_list_objects.dart';


//TODO: create endpoint, units and output variables,


class ForecastService {

  final DateFormat formatter = DateFormat('dd.MM');

  Future<List<CurrentForecastDetails>> updateCurrentForecasts() async {
    //option 1: initialize it here, return it and access it through snapshot
    List<CurrentForecastDetails> allForecasts =[];
      for (int i = 0; i < cities.length; i++) {
        var url = Uri.parse(
            'https://www.7timer.info/bin/astro.php?lon=${cities[i].lon}&lat=${cities[i].lat}&ac=0&unit=metric&output=json&tzshift=0');
        http.Response response = await http.get(url);
        Map? responseMap = jsonDecode(response.body);
        allForecasts.add(
          CurrentForecastDetails.fromJson(responseMap!, cities[i]));
      }
    return allForecasts;
  }
  //option 2: take it from the widget as parameter and then return it (pass by reference and modify)
  Future<List> updateDetailedForecast(List<DetailedForecastDetails> allDetailedForecasts,lon, lat) async {
    var url = Uri.parse(
        'https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    http.Response response = await http.get(url);
    Map? responseMap = jsonDecode(response.body);
    for(int index = 0; index<responseMap!['dataseries'].length;index++){
      DateTime timenow = DateTime.now();
      timenow = timenow.add(Duration(hours:3+index * 3));
      String formattedTime = DateFormat.Hm().format(timenow);
      String formattedDate = formatter.format(timenow);
      allDetailedForecasts.add(
        DetailedForecastDetails.fromJson(responseMap, index,formattedTime,formattedDate));
    }

    return allDetailedForecasts;
  }
}


//for later use
//var nightstart = DateTime(2022, 05, 1, 21);
//var ComparableTime = int.parse(DateFormat.H().format(timenow));
