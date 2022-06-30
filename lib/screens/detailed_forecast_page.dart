import 'package:challenge/components/detailed_forecast_page_components/detailed_forecast_list.dart';
import 'package:challenge/services/forecasts/forecast_service.dart';
import 'package:flutter/material.dart';
import '../components/navbar/nav_drawer.dart';
import '../services/setup_services.dart';

class DetailedForecastPage extends StatefulWidget {
  final Object? settings;

  const DetailedForecastPage({Key? key, required this.settings})
      : super(key: key);

  @override
  _DetailedForecastPageState createState() => _DetailedForecastPageState();
}

class _DetailedForecastPageState extends State<DetailedForecastPage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = widget.settings as Map<String, dynamic>;
    double lat = args['lat'];
    double lon = args['lon'];
    String name = args['name'];
    return Scaffold(
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: FutureBuilder(
          future: forecastGetter<ForecastService>().updateDetailedForecast(lon, lat),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                      width: 300,
                      child: Text('Showing three-day forecast for:\n$name\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),

                    ),
                    const DetailedForecastList(),
                    SizedBox(child:Text('after list')),
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
                  ],
                ),
              );
            }
            return const Text('An error has occurred');
          }),
    );
  }
}
