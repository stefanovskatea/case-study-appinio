import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:challenge/styles/detailed_forecast_page/detailed_forecast_list_contents.dart';
import 'package:flutter/material.dart';

class DetailedForecastCard extends StatelessWidget {
  final DetailedForecastDetails details;

  const DetailedForecastCard({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(details.timestamp,style: timestampdetail),
          Icon(details.icon, color: details.iconColor,),
          Text(details.temperature.toString(),style: temperaturedetail),
          Text(details.windDirection,style: windDirection),
          Text('at ${details.windSpeed}km/h',style: windSpeed),
        ],
      ),
    );
  }
}
