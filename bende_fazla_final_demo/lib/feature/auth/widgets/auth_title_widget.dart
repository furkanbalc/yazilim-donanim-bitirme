import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:flutter/material.dart';

import '../../../product/constants/index.dart';

class AuthTitleWidget extends StatelessWidget {
  const AuthTitleWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontFamily: AppStrings.kSFProFont,
                fontWeight: FontWeight.w500,
                color: AppColors.blackPrimary,
              ),
        ),
        AppSizedBox.low.height,
        Text(
          subTitle,
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontFamily: AppStrings.kSFProFont,
                color: AppColors.greyPrimary,
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
