
import 'city_model.dart';

class CurrentForecastDetails{
  late final String condition;
  late final int temperature;
  late final City city;

  CurrentForecastDetails({
    required this.condition,
    required this.temperature,
    required this.city
  });

  CurrentForecastDetails.fromJson(Map<dynamic,dynamic> json, this.city){
    temperature = json['dataseries'][0]['temp2m'];
    condition = json['dataseries'][0]['prec_type'];
  }
}

