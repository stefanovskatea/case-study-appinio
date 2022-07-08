import 'package:challenge/components/landing_page/landing_page_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/navbar/nav_drawer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.amber,
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
                child: Text('Welcome back!',
                    style: GoogleFonts.lato(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 64))),

            const LandingPageButton(
                route: 'CurrentForecastPage', title: 'Weather Forecast'),
            const LandingPageButton(route: 'CVPage', title: 'My Resume'),
            Image.asset(
              'assets/landing_page_illustration.jpg',
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
