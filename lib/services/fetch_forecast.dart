import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/current_forecast_list_objects.dart';
import '../models/current_forecast_list_objects.dart';
import '../models/current_forecasts_list.dart';
import '../models/forecast_variables.dart';

Future<void> fetchForecast(name, lat, lon, index) async {
  if (currentForecasts[index].didupdate == false) {
    var url = Uri.parse(
        'https://www.7timer.info/bin/astro.php?lon=$lon&lat=$lat&ac=0&unit=metric&output=json&tzshift=0');
    http.Response response = await http.get(url);
    responseMap = jsonDecode(response.body);
    forecast = responseMap!['dataseries'];
    temperature = forecast![0]['temp2m'];
    condition = forecast![0]['prec_type'];
    if (condition == 'none') {
      condition = 'dry';
    }
    currentForecasts[index] = CurrentForecastDetails(
      condition: condition,
      temperature: temperature,
      name: name,
      didupdate: true,
    );
  }
}
