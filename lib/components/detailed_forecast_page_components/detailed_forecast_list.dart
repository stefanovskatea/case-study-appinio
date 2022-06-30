
import 'package:challenge/components/detailed_forecast_page_components/detailed_forecast_card.dart';
import 'package:flutter/material.dart';

import '../../services/forecasts/forecast_service.dart';
import '../../services/setup_services.dart';
import '../current_forecast_page_components/current_forecast_card.dart';

class DetailedForecastList extends StatefulWidget {
  const DetailedForecastList({Key? key}) : super(key: key);

  @override
  State<DetailedForecastList> createState() => _DetailedForecastListState();
}

class _DetailedForecastListState extends State<DetailedForecastList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: forecastGetter<ForecastService>().allDetailedForecasts.length,
        itemBuilder: (context, index) {
          return DetailedForecastCard(details: forecastGetter<ForecastService>().allDetailedForecasts[index]);
        },
      ),
    );
  }
}
