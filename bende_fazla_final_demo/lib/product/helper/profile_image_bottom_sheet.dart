import 'package:bende_fazla_final/core/widgets/short_h_bar.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

imagePickerTypeBottomSheet({required BuildContext context, required Widget body}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const ShortHBar(),
          Row(
            children: [
              const SizedBox(width: 20),
              const Text(
                'Profil fotoğrafı',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              CustomIconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icons.close,
              ),
              const SizedBox(width: 15),
            ],
          ),
          const Divider(color: AppColors.greyPrimary),
          const SizedBox(height: 5),
          body,
          const SizedBox(height: 15),
        ],
      );
    },
  );
}
