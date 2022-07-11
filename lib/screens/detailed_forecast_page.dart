import 'package:challenge/components/detailed_forecast_page/detailed_forecast_appbar.dart';
import 'package:challenge/components/detailed_forecast_page/detailed_forecast_days_list.dart';
import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:flutter/material.dart';
import '../models/city_model.dart';
import '../services/setup_services.dart';

class DetailedForecastPage extends StatefulWidget {
  final City selectedCity;

  const DetailedForecastPage({Key? key, required this.selectedCity})
      : super(key: key);

  @override
  _DetailedForecastPageState createState() => _DetailedForecastPageState();
}

class _DetailedForecastPageState extends State<DetailedForecastPage> {
  List<dynamic> allForecasts = [];

  @override
  Widget build(BuildContext context) {
    final Future<List<dynamic>> fetchedForecasts = service<ForecastService>()
        .fetchDetailedForecast(widget.selectedCity.lon, widget.selectedCity.lat,
            widget.selectedCity.cityName);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.amber),
        backgroundColor: Colors.white,
        title:
            DetailedForecastPageAppBar(cityName: widget.selectedCity.cityName),
      ),
      body: FutureBuilder(
        future: fetchedForecasts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.amber,
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            allForecasts = snapshot.data as List<dynamic>;
            return DetailedForecastDaysList(allForecasts: allForecasts);
          }
          return const Text('An error has occurred');
        },
      ),
    );
  }
}
