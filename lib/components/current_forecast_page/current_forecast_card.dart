import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:challenge/screens/detailed_forecast_page.dart';
import 'package:challenge/styles/forecast_card_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentForecastCard extends StatelessWidget {
  final CurrentForecastDetails details;

  const CurrentForecastCard({Key? key, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                DetailedForecastPage(selectedCity: details.city),
          ),
        );
      },
      child: Card(
        color: details.bckgColor,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shape: forecastCardShape,
        child: SizedBox(
          height: 130,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          details.city.cityName,
                          style: GoogleFonts.lato(
                            textStyle: currentForecastLocation,
                          ),
                        ),
                        Text(
                          details.timestamp,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${details.temperature.toString()}°',
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      details.cloudcover,
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(height:15),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'currently ${details.condition}',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 17)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
