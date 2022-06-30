import 'package:challenge/services/setup_services.dart';
import 'package:challenge/services/routing/navigation_service.dart';
import 'package:challenge/services/routing/router.dart';
import 'package:flutter/material.dart';

import 'models/route_names.dart';


void main() {
  setupServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Case Study',
      debugShowCheckedModeBanner: false,
      home: Navigator(
        key: locator<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: LandingPageRoute,
      ),
    );
  }
}

