import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/widgets.dart';

class ImagePickerIcon extends StatelessWidget {
  const ImagePickerIcon({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });
  final VoidCallback onTap;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          onPressed: onTap,
          icon: icon,
          iconColor: AppColors.purplePrimary,
          minWidth: 50,
          border: Border.all(
            color: AppColors.purplePrimary.withOpacity(0.2),
            width: 2,
          ),
        ),
        const SizedBox(height: 5),
        Text(text, style: const TextStyle(color: AppColors.greyPrimary)),
      ],
    );
  }
}
