import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
    this.decoration,
    this.color,
    this.fontSize,
  });

  final TextDecoration? decoration;
  final VoidCallback? onPressed;
  final String buttonLabel;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonLabel,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: color ?? AppColors.purplePrimary, fontWeight: FontWeight.w600, fontSize: fontSize),
      ),
    );
  }
}
