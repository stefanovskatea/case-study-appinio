class DetailedForecastDetails {
  late final String condition;
  late final int temperature;
  late final String timestamp;
  late final int cloudcover;
  late final int speed;
  late final String date;

  DetailedForecastDetails({
    required this.condition,
    required this.temperature,
    required this.timestamp,
    required this.cloudcover,
    required this.speed,
    required this.date,
  });

  DetailedForecastDetails.fromJson(Map<dynamic,dynamic> json, index,this.timestamp, this.date){
    temperature = json["dataseries"][index]['temp2m'];
    condition = json["dataseries"][index]['prec_type'];
    speed = json["dataseries"][index]["wind10m"]["speed"];
    cloudcover = json["dataseries"][index]['cloudcover'];
  }
}
