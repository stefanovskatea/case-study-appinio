import 'package:challenge/components/detailed_forecast_page_components/detailed_forecast_list.dart';
import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:flutter/material.dart';
import '../models/city_model.dart';
import '../models/detailed_forecast_list_objects.dart';
import '../services/setup_services.dart';

class DetailedForecastPage extends StatefulWidget {
  final City selectedCity;

  const DetailedForecastPage({Key? key, required this.selectedCity})
      : super(key: key);

  @override
  _DetailedForecastPageState createState() => _DetailedForecastPageState();
}

class _DetailedForecastPageState extends State<DetailedForecastPage> {
  List<DetailedForecastDetails> allForecasts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: service<ForecastService>().updateDetailedForecast(allForecasts, widget.selectedCity.lon, widget.selectedCity.lat),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              allForecasts = snapshot.data as List<DetailedForecastDetails>;
              return DetailedForecastList(forecasts: allForecasts);
            }
            return const Text('An error has occurred');
          }),
    );
  }
}




/*Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 300,
                      child: Text('Showing three-day forecast for:\n${widget.name}\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),

                    ),

                    SizedBox(child:Text('after list')),*/
/*
                Expanded(
                  child: FutureBuilder(
                      future: forecastGetter<ForecastService>()
                          .updateDetailedForecast(widget.lon, widget.lat),
                      builder: (context, snapshot) {
                        return DetailedForecastList();



                          /*ListView.builder(
                          itemCount: forecastGetter<ForecastService>()
                              .allDetailedForecasts
                              .length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 5,
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Center(
                                    child: Text('C',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                  ),
                                ),
                              ]),
                              margin: EdgeInsets.only(
                                  left: 45.0, right: 45.0, bottom: 30.0),
                            );
                          },
                        );*/
                      }),
                ),*/
//],
//  ),
// );