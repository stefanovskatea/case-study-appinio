import 'package:get_it/get_it.dart';
import 'forecasts/forecast_service.dart';
import 'routing/navigation_service.dart';

GetIt locator = GetIt.instance;
GetIt forecastGetter = GetIt.instance;

void setupServices(){
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  forecastGetter.registerLazySingleton<ForecastService>(() => ForecastService());
}


