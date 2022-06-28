import 'package:challenge/components/landing_page_components/landing_page_button.dart';
import 'package:flutter/material.dart';
import '../components/navbar/nav_bar.dart';
import '../components/navbar/nav_drawer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: Column(children: [
        NavBar(),
        SizedBox(height: 150),
        Container(
          child: Column(children: [
            LandingPageButton(route: 'CurrentForecastPage',title: 'Weather Forecast'),
            SizedBox(height: 50),
            LandingPageButton(route: 'CVPage',title:'My Resume'),
          ]),
        ),
      ]),
    );
  }
}
