import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.validator,
    this.onChanged,
    this.keyboardType,
    required this.autofillHints,
    this.textInputAction,
    this.obscureText,
    this.hintText,
    this.suffixOnPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly,
    this.autoFocus,
    this.textAlign,
    this.maxLines,
    this.maxLenght,
    this.minLines,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final VoidCallback? suffixOnPressed;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String autofillHints;
  final bool? obscureText;
  final bool? readOnly;
  final String? hintText;
  final bool? autoFocus;
  final TextAlign? textAlign;
  final int? maxLines;
  final int? minLines;
  final int? maxLenght;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(' $hintText *', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.blackPrimary)),
        AppSizedBox.low.height,
        TextFormField(
          maxLines: maxLines ?? 1,
          minLines: minLines ?? 1,
          maxLength: maxLenght,
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          keyboardType: keyboardType,
          autofillHints: [autofillHints],
          textInputAction: textInputAction,
          textAlign: textAlign ?? TextAlign.start,
          obscureText: obscureText ?? false,
          autofocus: autoFocus ?? false,
          readOnly: readOnly ?? false,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.blackPrimary, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary),
            suffixIcon: CustomIconButton(onPressed: suffixOnPressed, icon: suffixIcon),
          ),
        ),
      ],
    );
  }
}
