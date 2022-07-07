import 'package:challenge/components/detailed_forecast_page/detailed_forecast_card.dart';
import 'package:flutter/material.dart';

class DetailedForecastList extends StatelessWidget {
  final List<dynamic> forecasts;

  const DetailedForecastList({
    Key? key,
    required this.forecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: forecasts.length,
      itemBuilder: (BuildContext context, int index) {
        return DetailedForecastCard(details: forecasts[index]);
      },
    );
  }
}
