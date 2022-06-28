import 'package:flutter/material.dart';
import '../components/current_forecast_page_components/current_forecast_list.dart';
import '../components/navbar/nav_bar.dart';
import '../components/navbar/nav_drawer.dart';
import '../models/city_model.dart';

late City selectedCity;

class CurrentForecastPage extends StatefulWidget {
  const CurrentForecastPage({Key? key}) : super(key: key);

  @override
  _CurrentForecastPageState createState() => _CurrentForecastPageState();
}

class _CurrentForecastPageState extends State<CurrentForecastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Container(
        child: Column(children: [
          NavBar(),
          SizedBox(height: 50),
          Expanded(
            child: CurrentForecastList(),
          ),
        ]),
      ),
    );
  }
}
