import 'package:bende_fazla_final/core/widgets/short_h_bar.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

customBottomSheet({
  required BuildContext context,
  required String title,
  required Widget body,
}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ShortHBar(),
          Row(
            children: [
              AppSizedBox.med.width,
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.blackPrimary, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              CustomIconButton(onPressed: () => Navigator.pop(context), icon: Icons.close),
              AppSizedBox.low.height,
            ],
          ),
          Divider(color: AppColors.blackPrimary.withOpacity(0.3)),
          AppSizedBox.low.height,
          Padding(padding: const AppPaddings.horizontalPaddingMed(), child: body),
          AppSizedBox.med.height,
        ],
      );
    },
  );
}
