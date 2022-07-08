import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:flutter/material.dart';
import 'current_forecast_card.dart';

ValueNotifier<bool> onScreen = ValueNotifier<bool>(true);

class CurrentForecastList extends StatelessWidget {
  final List<CurrentForecastDetails> forecasts;

  const CurrentForecastList({Key? key, required this.forecasts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (forecasts.length),
      itemBuilder: (context, index) {
        return CurrentForecastCard(details: forecasts[index]);
      },
    );
  }
}
