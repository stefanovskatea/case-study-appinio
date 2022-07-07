import 'package:challenge/models/current_forecast_list_objects.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'current_forecast_card.dart';

ValueNotifier<bool> onScreen = ValueNotifier<bool>(true);

class CurrentForecastList extends StatelessWidget {
  final List<CurrentForecastDetails> forecasts;

  const CurrentForecastList({Key? key, required this.forecasts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: (forecasts.length) + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              key: const Key('listTileKey'),
              contentPadding: const EdgeInsets.only(
                left: 30,
              ),
              title: Text(
                "Weather",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w900)),
              ),
            );
          }
          if (index == 1) {
            return const Divider(color: Colors.white);
          }
          return CurrentForecastCard(details: forecasts[index - 2]);
        },
    );
  }
}
