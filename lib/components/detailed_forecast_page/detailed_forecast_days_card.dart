import 'package:flutter/material.dart';
import '../../styles/current_forecast_page/current_forecast_card_content.dart';

class DetailedForecastDaysCard extends StatelessWidget {
  final Widget child;
  const DetailedForecastDaysCard({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      color: Colors.blueAccent,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
      shape: forecastCardShape,
      child: child,
    );
  }
}
