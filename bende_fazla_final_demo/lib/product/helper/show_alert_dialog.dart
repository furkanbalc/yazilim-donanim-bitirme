import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';

showAlerDialog({
  required BuildContext context,
  required String message,
  bool? barrierDismissible,
  String? btnText,
  Widget? route,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible ?? true,
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(message, style: Theme.of(context).textTheme.titleMedium),
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.circularAll()),
        actions: [
          TextButton(
            onPressed: () {
              route == null
                  ? Navigator.of(context).pop()
                  : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => route));
            },
            child: Text(btnText ?? AppStrings.kContinue,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.purplePrimary)),
          ),
        ],
      );
    },
  );
}
