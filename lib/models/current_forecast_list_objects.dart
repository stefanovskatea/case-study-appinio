

class CurrentForecastDetails{
  final String condition;
  final int temperature;
  final String name;
  final double lat;
  final double lon;
  final bool didupdate;

  CurrentForecastDetails({
    required this.condition,
    required this.temperature,
    required this.name ,
    required this.didupdate,
    required this.lat ,
    required this.lon,
  });
}

