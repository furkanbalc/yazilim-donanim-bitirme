import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

showLoadingDialog({required BuildContext context, required String message}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CustomCenteredCircularProgress(color: AppColors.purpleLight),
                AppSizedBox.med.width,
                Expanded(
                  child: Text(message, style: Theme.of(context).textTheme.titleMedium),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
