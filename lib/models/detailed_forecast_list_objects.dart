class DetailedForecastDetails {
  final String condition;
  final int temperature;
  final String timestamp;
  final int cloudcover;
  final int speed;
  final String date;

  DetailedForecastDetails({
    required this.condition,
    required this.temperature,
    required this.timestamp,
    required this.cloudcover,
    required this.speed,
    required this.date,
  });
}
