import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    required this.butonColor,
  });

  final String buttonTitle;
  final Color butonColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(side: BorderSide(color: butonColor)),
      child: Padding(
        padding: const AppPaddings.verticalPaddingMed(),
        child: Text(
          buttonTitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: butonColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
