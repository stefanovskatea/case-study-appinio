import 'package:challenge/models/city_list.dart';
import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:challenge/services/setup_services.dart';
import 'package:flutter/material.dart';
import 'current_forecast_card.dart';



class CurrentForecastList extends StatefulWidget {
  const CurrentForecastList({Key? key, }) : super(key: key);

  @override
  _CurrentForecastListState createState() => _CurrentForecastListState();
}

class _CurrentForecastListState extends State<CurrentForecastList> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: forecastGetter<ForecastService>().allForecasts.length,
      itemBuilder: (context, index) {
        return CurrentForecastCard(details: forecastGetter<ForecastService>().allForecasts[index]);
      },
    );
  }
}

