import 'package:challenge/components/detailed_forecast_page/detailed_forecast_card.dart';
import 'package:flutter/material.dart';
import '../../models/detailed_forecast_list_objects.dart';

class DetailedForecastList extends StatelessWidget {
  final List<DetailedForecastDetails> forecasts;

  const DetailedForecastList({
    Key? key,
    required this.forecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: forecasts.length,
      itemBuilder: (context, index) {
        return DetailedForecastCard(details: forecasts[index]);
      },
    );
  }
}
