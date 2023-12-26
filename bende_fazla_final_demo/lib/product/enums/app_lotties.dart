enum AppLotties {
  donateBox('donate_box'),
  food('food'),
  love('love'),
  takePicture('take_picture'),
  think('think'),
  welcome('welcome'),
  success('success'),
  error('error'),
  ;

  final String value;
  const AppLotties(this.value);

  String get toLottie => 'assets/lottie/lottie_$value.json';
}
