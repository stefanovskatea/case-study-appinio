import 'package:get_it/get_it.dart';
import 'forecasts/forecast_service.dart';
import 'routing/navigation_service.dart';

GetIt service = GetIt.instance;

void setupServices(){
  service.registerLazySingleton<NavigationService>(() => NavigationService());
  service.registerLazySingleton<ForecastService>(() => ForecastService());
}


