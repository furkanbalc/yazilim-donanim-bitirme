import 'package:flutter/material.dart';

class AppPaddings extends EdgeInsets {
  // -- my page padding --
  const AppPaddings.pagePadding() : super.only(right: 16, left: 16, bottom: 20);

  // -- all --
  const AppPaddings.allPaddingLow() : super.all(8.0);
  const AppPaddings.allPaddingMed() : super.all(16.0);
  const AppPaddings.allPaddingHigh() : super.all(24.0);

  // -- horizontal --
  const AppPaddings.horizontalPaddingLow() : super.symmetric(horizontal: 8.0);
  const AppPaddings.horizontalPaddingMed() : super.symmetric(horizontal: 16.0);
  const AppPaddings.horizontalPaddingHigh() : super.symmetric(horizontal: 20.0);
  const AppPaddings.horizontalPaddingUltra() : super.symmetric(horizontal: 24.0);

  // -- vertical --
  const AppPaddings.verticalPaddingLow() : super.symmetric(vertical: 8.0);
  const AppPaddings.verticalPaddingMed() : super.symmetric(vertical: 16.0);
  const AppPaddings.verticalPaddingHigh() : super.symmetric(vertical: 20.0);
  const AppPaddings.verticalPaddingUltra() : super.symmetric(vertical: 24.0);

  // -- symmetric --
  const AppPaddings.symmetricPaddingLow() : super.symmetric(vertical: 8.0, horizontal: 8.0);
  const AppPaddings.symmetricPaddingMed() : super.symmetric(vertical: 16.0, horizontal: 16.0);
  const AppPaddings.symmetricPaddingHigh() : super.symmetric(vertical: 24.0, horizontal: 24.0);

  // -- top --
  const AppPaddings.topPaddingLow() : super.only(top: 8.0);
  const AppPaddings.topPaddingMed() : super.only(top: 16.0);
  const AppPaddings.topPaddingHigh() : super.only(top: 24.0);

  // -- bottom --
  const AppPaddings.bottomPaddingLow() : super.only(bottom: 8.0);
  const AppPaddings.bottomPaddingMed() : super.only(bottom: 16.0);
  const AppPaddings.bottomPaddingHigh() : super.only(bottom: 24.0);

  // -- top --
  const AppPaddings.rightPaddingLow() : super.only(right: 8.0);
  const AppPaddings.rightPaddingMed() : super.only(right: 16.0);
  const AppPaddings.rightPaddingHigh() : super.only(right: 24.0);

  // -- bottom --
  const AppPaddings.leftPaddingLow() : super.only(left: 8.0);
  const AppPaddings.leftPaddingMed() : super.only(left: 16.0);
  const AppPaddings.leftPaddingHigh() : super.only(left: 24.0);
}
