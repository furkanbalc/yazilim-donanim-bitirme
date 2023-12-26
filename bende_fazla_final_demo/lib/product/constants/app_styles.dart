import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:flutter/material.dart';

@immutable
class AppStyles {
  const AppStyles._();

  // -- app name --
  static const TextStyle kAppNameStyle = TextStyle(fontFamily: AppStrings.kOleoFont, fontSize: 48, color: Colors.white);
  static const TextStyle kAppNameColor = TextStyle(fontSize: 20, color: AppColors.purplePrimary);
  static const TextStyle kAppNameColorLarge =
      TextStyle(fontFamily: AppStrings.kOleoFont, fontSize: 52, color: AppColors.whiteColor);

  // -- body --
  static const TextStyle bodyLarge = TextStyle(fontFamily: AppStrings.kSFProFont, fontSize: 18, color: AppColors.blackPrimary);
  static const TextStyle bodyMedium = TextStyle(fontFamily: AppStrings.kSFProFont, fontSize: 16, color: AppColors.blackPrimary);
  static const TextStyle bodySmall = TextStyle(fontFamily: AppStrings.kSFProFont, fontSize: 14, color: AppColors.blackPrimary);
}
