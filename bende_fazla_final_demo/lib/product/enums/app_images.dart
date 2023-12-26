enum AppImages {
  appLogo('app_logo'),
  sandalye('sandalye'),
  ;

  final String value;
  const AppImages(this.value);

  String get toImage => 'assets/images/ic_$value.png';
}
