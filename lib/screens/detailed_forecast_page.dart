import 'package:challenge/components/detailed_forecast_page/detailed_forecast_list.dart';
import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:flutter/material.dart';
import '../models/city_model.dart';
import '../models/detailed_forecast_list_objects.dart';
import '../services/setup_services.dart';

class DetailedForecastPage extends StatefulWidget {
  final City selectedCity;

  const DetailedForecastPage({Key? key, required this.selectedCity})
      : super(key: key);

  @override
  _DetailedForecastPageState createState() => _DetailedForecastPageState();
}

class _DetailedForecastPageState extends State<DetailedForecastPage> {
  List<DetailedForecastDetails> allForecasts = [];

  @override
  Widget build(BuildContext context) {
    final Future<dynamic> fetchedForecasts = service<ForecastService>().fetchDetailedForecast(widget.selectedCity.lon, widget.selectedCity.lat);
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: fetchedForecasts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            allForecasts = snapshot.data as List<DetailedForecastDetails>;
            return DetailedForecastList(forecasts: allForecasts);
          }
          return const Text('An error has occurred');
        },
      ),
    );
  }
}
