// import 'package:bende_fazla_final/feature/auth/widgets/index.dart';
// import 'package:bende_fazla_final/product/constants/index.dart';
// import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
// import 'package:bende_fazla_final/product/extension/index.dart';
// import 'package:bende_fazla_final/product/widgets/index.dart';
// import 'package:flutter/material.dart';

// class ForgotPassPhoneView extends StatefulWidget {
//   const ForgotPassPhoneView({super.key});

//   @override
//   State<ForgotPassPhoneView> createState() => _ForgotPassPhoneViewState();
// }

// class _ForgotPassPhoneViewState extends State<ForgotPassPhoneView> {
//   @override
//   Widget build(BuildContext context) {
//     return AuthBaseScaffold(
//       child: Column(
//         children: [
//           const AuthTitleWidget(title: AppStrings.kResetPass, subTitle: AppStrings.kResetPassPhoneNumberDesc),
//           AppSizedBox.mid.height,
//           const CustomFormTextField(
//             prefixIcon: Icons.phone_android_outlined,
//             labelText: AppStrings.kPhoneNumber,
//             autofillHints: AutofillHints.email,
//           ),
//           AppSizedBox.mid.height,
//           SizedBox(
//             width: double.infinity,
//             child: CustomElevatedButton(
//               onPressed: () {},
//               buttonTitle: AppStrings.kSendVerifyCode,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
