import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:challenge/screens/detailed_forecast_page.dart';
import 'package:challenge/styles/current_forecast_page/current_forecast_card_content.dart';
import 'package:flutter/material.dart';

class CurrentForecastCard extends StatelessWidget {
  final CurrentForecastDetails details;

  const CurrentForecastCard({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                DetailedForecastPage(selectedCity: details.city),
          ),
        );
      },
      child: Card(
        color: details.bckgColor,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shape: forecastCardShape,
        child: SizedBox(
          height: 125,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(details.city.cityName, style: location),
                        Text(details.timestamp, style: timestamp),
                      ],
                    ),
                    Text('${details.temperature.toString()}°',
                        style: temperature),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(details.cloudcover, style: cloudcover),
                    Text('Currently ${details.condition}', style: condition),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
