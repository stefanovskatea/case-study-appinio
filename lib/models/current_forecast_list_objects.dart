

class CurrentForecastDetails{
  late final String condition;
  late final int temperature;
  late final String name;
  late bool didupdate;

  CurrentForecastDetails({
    this.condition = 'loading',
    this.temperature = -000,
    this.name = 'loading',
    this.didupdate = false,
  });
}

