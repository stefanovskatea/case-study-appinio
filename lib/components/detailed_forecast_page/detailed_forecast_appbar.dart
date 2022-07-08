import 'package:challenge/styles/detailed_forecast_page/detailed_forecast_page_appbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class DetailedForecastPageAppBar extends StatelessWidget {
  final String cityName;

  const DetailedForecastPageAppBar({Key? key, required this.cityName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('72-hour Forecast',
              style: threeDayForecast),
          Text(cityName,
              style: cityNameStyle),
        ],
      ),
    );
  }
}
