import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:challenge/services/setup_services.dart';
import 'package:flutter/material.dart';
import '../components/current_forecast_page_components/current_forecast_list.dart';
import '../components/navbar/nav_drawer.dart';
import '../models/current_forecast_list_objects.dart';

class CurrentForecastPage extends StatefulWidget {
  const CurrentForecastPage({Key? key}) : super(key: key);

  @override
  _CurrentForecastPageState createState() => _CurrentForecastPageState();
}

class _CurrentForecastPageState extends State<CurrentForecastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        //Should I take the list as an argument in the future or not
        //if not I will initialize it in the function itself and just return it
        future: service<ForecastService>().updateCurrentForecasts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            List<CurrentForecastDetails> allForecasts = snapshot.data as List<CurrentForecastDetails>;
            return CurrentForecastList(forecasts: allForecasts);
          }
          return const Text('An error has occurred');
        },
      ),
    );
  }
}
