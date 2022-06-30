import 'package:challenge/components/landing_page_components/landing_page_button.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(),
      drawer: const NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            LandingPageButton(
                route: 'CurrentForecastPage', title: 'Weather Forecast'),
            LandingPageButton(
                route: 'CVPage', title: 'My Resume'),
          ],
        ),
      ),
    );
  }
}
