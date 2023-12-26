import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.onPressed, required this.text, this.buttonWidth});

  final VoidCallback onPressed;
  final double? buttonWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        child: Padding(
          padding: const AppPaddings.verticalPaddingMed(),
          child: Text(text),
        ),
      ),
    );
  }
}
