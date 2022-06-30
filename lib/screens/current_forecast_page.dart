import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:challenge/services/setup_services.dart';
import 'package:flutter/material.dart';
import '../components/current_forecast_page_components/current_forecast_list.dart';
import '../components/navbar/nav_drawer.dart';

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
      drawer: const NavigationDrawer(),
      body: FutureBuilder(
        future: forecastGetter<ForecastService>().updateCurrentForecasts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return const CurrentForecastList();
          }
          return const Text('An error has occurred');
        },
      ),
    );
  }
}
