import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'city_model.dart';

class CurrentForecastDetails {
  late final String condition;
  late final int temperature;
  late final City city;
  late final String cloudcover;
  late final Color bckgColor;
  late final String timestamp;

  CurrentForecastDetails({
    required this.condition,
    required this.temperature,
    required this.city,
    required this.cloudcover,
    required this.bckgColor,
    required this.timestamp,
  });

  CurrentForecastDetails.fromJson(Map<dynamic, dynamic> json, this.city, this.timestamp) {
    temperature = json['temp2m'];
    var conditionAux = json['prec_type'];
    var cloudcoverAux = json['cloudcover'];
    if(conditionAux == 'none'){
      condition = 'dry';

    }else{
      condition = 'rainy';

    }
    if (cloudcoverAux <= 3) {
      cloudcover = 'clear skies';
      bckgColor = const Color.fromARGB(230, 61, 185, 253);
    }
    if (cloudcoverAux > 3 && cloudcoverAux <= 6) {
      cloudcover = 'Partly cloudy';
      bckgColor = const Color.fromARGB(230, 131, 195, 229);
    }
    if(cloudcoverAux > 6){
      cloudcover = 'Mostly cloudy';
      bckgColor = const Color.fromARGB(230, 103, 140, 157);
    }
  }

}
