// import 'package:bende_fazla_final/product/widgets/custom_form_text_field.dart';
// import 'package:bende_fazla_final/product/constants/index.dart';
// import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
// import 'package:bende_fazla_final/product/extension/index.dart';
// import 'package:flutter/material.dart';

// class NewPassFormWidget extends StatefulWidget {
//   const NewPassFormWidget({super.key});

//   @override
//   State<NewPassFormWidget> createState() => _NewPassFormWidgetState();
// }

// class _NewPassFormWidgetState extends State<NewPassFormWidget> {
//   final GlobalKey<FormState> _key = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _key,
//       child: Column(
//         children: [
//           const CustomFormTextField(
//             prefixIcon: Icons.lock_outline,
//             labelText: AppStrings.kFormNewPass,
//             autofillHints: AutofillHints.password,
//           ),
//           AppSizedBox.mid.height,
//           const CustomFormTextField(
//             prefixIcon: Icons.lock_outline,
//             labelText: AppStrings.kFormNewPassTry,
//             autofillHints: AutofillHints.password,
//           ),
//         ],
//       ),
//     );
//   }
// }
