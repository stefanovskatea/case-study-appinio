import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:challenge/screens/detailed_forecast_page.dart';
import 'package:flutter/material.dart';

class CurrentForecastCard extends StatelessWidget {
  final CurrentForecastDetails details;

  const CurrentForecastCard({Key? key, required this.details})
      : super(key: key);

  final String route = 'DetailedForecastPage';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailedForecastPage( selectedCity: details.city),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SizedBox(
          height: 200,
          child: Center(
            child: Text(
              '${details.city.cityName}'
              '\nCurrent temperature: ${details.temperature}'
              '\nCurrent condition: ${details.condition}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
