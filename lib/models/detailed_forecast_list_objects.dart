import 'package:flutter/material.dart';

class DetailedForecastDetails {
  late final String timestamp;
  late final IconData icon;
  late final Color iconColor;
  late final int temperature;
  late final int windSpeed;
  late final String windDirection;
  late final String date;
  late final String name;

  DetailedForecastDetails({
    required this.temperature,
    required this.timestamp,
    required this.windSpeed,
    required this.date,
  });

  DetailedForecastDetails.fromJson(Map<dynamic,dynamic> json,this.timestamp, this.date, this.name){
    windSpeed = json["wind10m"]["speed"];
    temperature = json['temp2m'];
    windDirection = json["wind10m"]['direction'];
    var conditionAux = json['prec_type'];
    var cloudcoverAux = json['cloudcover'];
    if(conditionAux == 'none' && cloudcoverAux <=3){
      icon = Icons.sunny;
      iconColor = Colors.amber;
    }else if (conditionAux == 'none' && cloudcoverAux >3 && cloudcoverAux <= 6){
      icon = Icons.wb_cloudy;
      iconColor = Colors.white;
    }else if(conditionAux == 'none' && cloudcoverAux >6){
      icon = Icons.wb_cloudy;
      iconColor = Colors.white;
    }
    else if(conditionAux == 'rain'){
      icon = Icons.cloudy_snowing;
      iconColor = Colors.white;
    }
  }
}
