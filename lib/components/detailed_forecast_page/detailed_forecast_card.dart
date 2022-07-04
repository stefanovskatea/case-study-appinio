import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:challenge/styles/forecast_card_style.dart';
import 'package:flutter/material.dart';


class DetailedForecastCard extends StatelessWidget {
  final DetailedForecastDetails details;
  const DetailedForecastCard({Key? key, required this.details}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      shape: forecastCardShape,
      child: SizedBox(
        height: 200,
        child: Center(
          child: Text(
            '\nat: ${details.timestamp} on: ${details.date}'
            '\ncloud cover: ${details.cloudcover}'
            '\ntemperature: ${details.temperature}'
            '\nwind speed: ${details.speed}'
            '\ncondition: ${details.condition}',
            textAlign: TextAlign.center,
            style: currentForecastCardStyle,
          ),
        ),
      ),
    );
  }
}
