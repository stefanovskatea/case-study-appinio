import 'package:challenge/models/city_list.dart';
import 'package:flutter/material.dart';
import 'current_forecast_card.dart';



class CurrentForecastList extends StatefulWidget {
  const CurrentForecastList({Key? key}) : super(key: key);

  @override
  _CurrentForecastListState createState() => _CurrentForecastListState();
}

class _CurrentForecastListState extends State<CurrentForecastList> {

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: cities.length,
      itemBuilder: (context, index) {
        var lon = cities[index].lon;
        var lat = cities[index].lat;
        var name = cities[index].cityName;
        return CurrentForecastCard(name: name, lat: lat, lon: lon, index: index);
      },
    );
  }
}

