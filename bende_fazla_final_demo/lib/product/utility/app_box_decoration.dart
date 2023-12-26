import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';

class AppBoxDecoration {
  static final BoxDecoration onboardDecoration = BoxDecoration(
    borderRadius: const AppBorderRadius.onBoard(),
    color: AppColors.purplePrimary,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Gölgeli rengi ve opaklığı
        spreadRadius: 5, // Yayılma yarıçapı
        blurRadius: 7, // Bulanıklık yarıçapı
        offset: const Offset(0, 3), // Gölgenin konumu (x, y)
      ),
    ],
  );

  static final BoxDecoration welcomeDecorations = BoxDecoration(
    borderRadius: const AppBorderRadius.onBoard(),
    color: AppColors.whiteColor,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3), // Gölgeli rengi ve opaklığı
        spreadRadius: 5, // Yayılma yarıçapı
        blurRadius: 7, // Bulanıklık yarıçapı
        offset: const Offset(0, 3), // Gölgenin konumu (x, y)
      ),
    ],
  );
}
