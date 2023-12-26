import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.whiteColor,
    // -- appbar --
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle:
          TextStyle(fontFamily: 'SF Pro Text', fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.blackPrimary),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(color: AppColors.blackPrimary),
    ),
    // -- Buttons --
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.circularAll()),
        backgroundColor: AppColors.purplePrimary,
        foregroundColor: AppColors.whiteColor,
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        //foregroundColor: AppColors.purplePrimary,
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.circularAll()),
        splashFactory: NoSplash.splashFactory,
        backgroundColor: AppColors.whiteColor,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.purplePrimary,
      foregroundColor: Colors.white,
    ),

    // -- input decoration --
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderSide: const BorderSide(), borderRadius: AppBorderRadius.circularAll()),
      enabledBorder: OutlineInputBorder(borderRadius: AppBorderRadius.circularAll(), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppBorderRadius.circularAll(),
        borderSide: const BorderSide(color: AppColors.purplePrimary),
      ),
      prefixIconColor: AppColors.greyPrimary,
      suffixIconColor: AppColors.greyPrimary,
      filled: true,
      fillColor: AppColors.greyLighter,
    ),

    // -- card --
    cardTheme: CardTheme(
      color: AppColors.greyLight,
      shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.circularAll()),
    ),

    // -- bottom navigation bar --
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.purplePrimary,
    ),

    // -- divider --
    dividerTheme: const DividerThemeData(color: AppColors.greyLight),

    // -- dialog --
    dialogBackgroundColor: AppColors.whiteColor,
    dialogTheme: DialogTheme(shape: RoundedRectangleBorder(borderRadius: AppBorderRadius.circularAll())),

    // -- bottom sheet --
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.whiteColor,
      modalBackgroundColor: AppColors.whiteColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    ),
  );
}
