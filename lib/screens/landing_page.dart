import 'package:challenge/components/landing_page/landing_page_button.dart';
import 'package:challenge/screens/current_forecast_page.dart';
import 'package:challenge/screens/resume_page.dart';
import 'package:challenge/styles/landing_page/title.dart';
import 'package:flutter/material.dart';
import '../components/navbar/nav_drawer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.amber),
        backgroundColor: Colors.white,
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                child: Text('Welcome back!', style: title)),
            const LandingPageButton(
                route: CurrentForecastPage(), title: 'Weather Forecast'),
            const LandingPageButton(route: ResumePage(), title: 'My Resume'),
            ////////////////////////////////////////// ask about loading images
            SizedBox(
              height: 350,
              child: Image.asset(
                'assets/landing_page_illustration.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
