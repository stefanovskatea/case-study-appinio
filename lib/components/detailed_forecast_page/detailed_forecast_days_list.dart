import 'package:challenge/components/detailed_forecast_page/detailed_forecast_days_card.dart';
import 'package:challenge/styles/detailed_forecast_page/detailed_forecast_list_contents.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailed_forecast_list.dart';

class DetailedForecastDaysList extends StatelessWidget {
  final List<dynamic> allForecasts;

  const DetailedForecastDaysList({Key? key, required this.allForecasts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allForecasts.length,
      itemBuilder: (context, index) {
        return DetailedForecastDaysCard(
          child: Column(
            children: [
              Text('${allForecasts[index][0].date}', style: dayName),
              const Divider(color: Colors.white),
              DetailedForecastList(forecasts: allForecasts[index]),
            ],
          ),
        );
      },
    );
  }
}
