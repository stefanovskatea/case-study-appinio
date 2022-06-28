import 'package:challenge/screens/current_forecast_page.dart';
import 'package:flutter/material.dart';
import '../../models/city_list.dart';
import '../../models/city_model.dart';
import '../../models/current_forecasts_list.dart';
import '../../screens/detailed_forecast_page.dart';
import '../../services/fetch_forecast.dart';
import '../../services/routing/locator.dart';
import '../../services/routing/navigation_service.dart';

late City selectedCity;

class CurrentForecastCard extends StatefulWidget {
  final String name;
  final double lat;
  final double lon;
  final int index;

  const CurrentForecastCard(
      {Key? key,
      required this.name,
      required this.lat,
      required this.lon,
      required this.index})
      : super(key: key);

  @override
  State<CurrentForecastCard> createState() => _CurrentForecastCardState();
}

class _CurrentForecastCardState extends State<CurrentForecastCard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchForecast(widget.name, widget.lat, widget.lon, widget.index),
      builder: (context, snapshot) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ForecastDetail(city: cities[widget.index]),
              ),
            );
          },
          child: Card(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              height: 200,
              child: Center(
                child: Text(
                  '${currentForecasts[widget.index].name}'
                  '\nCurrent temperature: ${currentForecasts[widget.index].temperature}'
                  '\nCurrent condition: ${currentForecasts[widget.index].condition}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
