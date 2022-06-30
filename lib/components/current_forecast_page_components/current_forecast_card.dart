import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:flutter/material.dart';
import '../../models/city_model.dart';
import '../../services/routing/navigation_service.dart';
import '../../services/setup_services.dart';

late City selectedCity;

class CurrentForecastCard extends StatefulWidget {
  final CurrentForecastDetails details;

  const CurrentForecastCard({Key? key, required this.details})
      : super(key: key);

  @override
  State<CurrentForecastCard> createState() => _CurrentForecastCardState();
}

class _CurrentForecastCardState extends State<CurrentForecastCard> {
  final String route = 'DetailedForecastPage';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateToWObj(route,widget.details.name,widget.details.lon, widget.details.lat, );
      },
      child: Card(
        margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SizedBox(
          height: 200,
          child: Center(
            child: Text(
              '${widget.details.name}'
              '\nCurrent temperature: ${widget.details.temperature}'
              '\nCurrent condition: ${widget.details.condition}',
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
  }
}
