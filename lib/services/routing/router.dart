import 'package:challenge/models/route_names.dart';
import 'package:challenge/screens/current_forecast_page.dart';
import 'package:challenge/screens/landing_page.dart';
import 'package:challenge/screens/resume_page.dart';
import 'package:flutter/cupertino.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case CurrentForecastRoute:
      return _getPageRoute(CurrentForecastPage());
    case CVRoute:
      return _getPageRoute(ResumePage());
    default:
      return _getPageRoute(LandingPage());
  }
}

PageRoute _getPageRoute (Widget child){
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({required this.child}) : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) => child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) => FadeTransition(opacity: animation, child: child,),
  );
}