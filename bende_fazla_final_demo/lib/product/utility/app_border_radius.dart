import 'package:flutter/material.dart';

class AppBorderRadius extends BorderRadius {
  // -- all --
  AppBorderRadius.circularAll() : super.circular(15);

  // -- only top --
  const AppBorderRadius.circularOnlyTop()
      : super.only(
          topLeft: const Radius.circular(15),
          topRight: const Radius.circular(15),
        );

  // -- only bottom --
  const AppBorderRadius.circularOnlyBottom()
      : super.only(
          bottomLeft: const Radius.circular(15),
          bottomRight: const Radius.circular(15),
        );

  const AppBorderRadius.onBoard()
      : super.only(
          bottomLeft: const Radius.circular(75),
          bottomRight: const Radius.circular(75),
        );

  const AppBorderRadius.welcome()
      : super.only(
          topLeft: const Radius.circular(75),
          topRight: const Radius.circular(75),
        );

  // -- only left --
  const AppBorderRadius.circularOnlyLeft()
      : super.only(
          topLeft: const Radius.circular(15),
          bottomLeft: const Radius.circular(15),
        );
}
