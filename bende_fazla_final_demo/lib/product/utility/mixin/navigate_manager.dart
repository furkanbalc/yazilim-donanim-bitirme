import 'package:flutter/material.dart';

mixin NavigatorManager {
  void navigatePushNamedAndRemoveUntil(BuildContext context, String route) {
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  }

  void navigatePushNamed(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  void navigatePopAndPushNamed(BuildContext context, String route) {
    Navigator.of(context).pop();
    Navigator.pushNamed(context, route);
  }

  void navigatePop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
