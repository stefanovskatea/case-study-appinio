import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:challenge/services/setup_services.dart';
import 'package:challenge/styles/current_forecast_page/current_forecast_appbar.dart';
import 'package:flutter/material.dart';
import '../components/current_forecast_page/current_forecast_list.dart';
import '../models/current_forecast_list_objects.dart';

class CurrentForecastPage extends StatefulWidget {
  const CurrentForecastPage({Key? key}) : super(key: key);

  @override
  _CurrentForecastPageState createState() => _CurrentForecastPageState();
}

class _CurrentForecastPageState extends State<CurrentForecastPage> {
  @override
  Widget build(BuildContext context) {
    final Future<dynamic> fetchForecasts =
        service<ForecastService>().fetchCurrentForecasts();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Weather",
          style: currentForecastAppBar,
        ),
      ),
      body: Column(
        children: [
          const Divider(
            color: Colors.white,
          ),
          Expanded(
            child: FutureBuilder(
              future: fetchForecasts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  List<CurrentForecastDetails> allForecasts =
                      snapshot.data as List<CurrentForecastDetails>;
                  return CurrentForecastList(forecasts: allForecasts);
                }
                return const Text('An error has occurred');
              },
            ),
          ),
        ],
      ),
    );
  }
}
