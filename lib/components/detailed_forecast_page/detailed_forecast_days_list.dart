import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../styles/forecast_card_style.dart';
import 'detailed_forecast_list.dart';

class DetailedForecastDaysList extends StatelessWidget {
  final List<dynamic> allForecasts;

  const DetailedForecastDaysList({Key? key, required this.allForecasts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Text('Today',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400))),
        ),
        Card(
          color: Colors.blueAccent,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
          shape: forecastCardShape,
          child: DetailedForecastList(forecasts: allForecasts[0]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Text('${allForecasts[1][0].date}',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400))),
        ),
        Card(
          color: Colors.blueAccent,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical:5),
          shape: forecastCardShape,
          child: DetailedForecastList(forecasts: allForecasts[1]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Text('${allForecasts[2][0].date}',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400))),
        ),
        Card(
          color: Colors.blueAccent,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical:5),
          shape: forecastCardShape,
          child: DetailedForecastList(forecasts: allForecasts[2]),
        ),
      ],
    );
  }
}
