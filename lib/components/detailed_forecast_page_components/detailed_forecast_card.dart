import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:flutter/material.dart';

class DetailedForecastCard extends StatefulWidget {
  final DetailedForecastDetails details;
  const DetailedForecastCard({Key? key, required this.details}) : super(key: key);

  @override
  State<DetailedForecastCard> createState() => _DetailedForecastCardState();
}

class _DetailedForecastCardState extends State<DetailedForecastCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        height: 200,
        child: Center(
          child: Text(
            '\nat: ${widget.details.timestamp} on: ${widget.details.date}'
            '\ncloud cover: ${widget.details.cloudcover}'
            '\ntemperature: ${widget.details.temperature}'
            '\nwind speed: ${widget.details.speed}'
            '\ncondition: ${widget.details.condition}',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
