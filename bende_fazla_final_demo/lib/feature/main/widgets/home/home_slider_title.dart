import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/app_paddings.dart';
import 'package:flutter/material.dart';

class HomeSliderTitle extends StatelessWidget {
  const HomeSliderTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const AppPaddings.horizontalPaddingHigh(),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.bodyLarge.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
