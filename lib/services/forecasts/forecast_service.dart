import 'dart:convert';
import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../../../models/current_forecast_list_objects.dart';
import '../../models/city_list.dart';
import '../../models/current_forecast_list_objects.dart';


//TODO: create endpoint, units and output variables,


class ForecastService {

  final DateFormat formatter = DateFormat('EEE');//DateFormat('dd.MM');


  Future<List<CurrentForecastDetails>> fetchCurrentForecasts() async {
    String hour = DateTime.now().hour.toString();
    String  minute = DateTime.now().minute.toString();
    String timestamp = '$hour:$minute';
    List<CurrentForecastDetails> allForecasts =[];
      for (int i = 0; i < cities.length; i++) {
        var url = Uri.parse(
            'https://www.7timer.info/bin/astro.php?lon=${cities[i].lon}&lat=${cities[i].lat}&ac=0&unit=metric&output=json&tzshift=0');
        http.Response response = await http.get(url);
        Map? responseMap = jsonDecode(response.body);
        allForecasts.add(
          CurrentForecastDetails.fromJson(responseMap!['dataseries'][0], cities[i], timestamp));
      }
    return allForecasts;
  }

  Future<List<dynamic>> fetchDetailedForecast(double lon, double lat, String name) async {
    List<dynamic> allDetailedForecasts = [[],[],[],[]];
    var url = Uri.parse(
        'https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    http.Response response = await http.get(url);
    Map? responseMap = jsonDecode(response.body);
    for(int index = 0; index<responseMap!['dataseries'].length;index++){
      DateTime timenow = DateTime.now();
      timenow = timenow.add(Duration(hours:3+index * 3));
      String formattedTime = DateFormat.Hm().format(timenow);
      String formattedDate = formatter.format(timenow);
      if(DateTime.now().day == timenow.day) {
        allDetailedForecasts[0].add(
        DetailedForecastDetails.fromJson(responseMap["dataseries"][index],formattedTime,'Today',name));
      }
      //print(allDetailedForecasts[0]);
      if(DateTime.now().day+1 == timenow.day){
        allDetailedForecasts[1].add(
            DetailedForecastDetails.fromJson(responseMap["dataseries"][index],formattedTime,formattedDate,name));
      }
      //print(allDetailedForecasts[1]);
      if(DateTime.now().day+2 == timenow.day){
        allDetailedForecasts[2].add(
            DetailedForecastDetails.fromJson(responseMap["dataseries"][index],formattedTime,formattedDate,name));
      }//print(allDetailedForecasts[2]);
      if(DateTime.now().day+3 == timenow.day){
        allDetailedForecasts[3].add(
            DetailedForecastDetails.fromJson(responseMap["dataseries"][index],formattedTime,formattedDate,name));
      }
    }
    return allDetailedForecasts;
  }
}


//for later use
//var nightstart = DateTime(2022, 05, 1, 21);
//var ComparableTime = int.parse(DateFormat.H().format(timenow));
