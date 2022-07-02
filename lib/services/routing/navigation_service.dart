import 'package:challenge/models/city_model.dart';
import 'package:challenge/services/routing/router.dart';
import 'package:flutter/material.dart';

import '../../screens/detailed_forecast_page.dart';

class NavigationService{
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName){
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void goBack(){
    return navigatorKey.currentState!.pop();
  }
}
