import 'package:challenge/models/detailed_forecast_list_objects.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailedForecastCard extends StatelessWidget {
  final DetailedForecastDetails details;

  const DetailedForecastCard({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(details.timestamp,style: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),),
          Icon(details.icon, color: details.iconColor,),
          Text(details.temperature.toString(),style: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),),
          Text(details.windDirection,style: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),),
          Text('at ${details.windSpeed}km/h',style: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),),
        ],
      ),
    );
  }
}
