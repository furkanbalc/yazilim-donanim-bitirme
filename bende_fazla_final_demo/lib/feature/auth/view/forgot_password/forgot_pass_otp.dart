// import 'package:bende_fazla_final/feature/auth/widgets/index.dart';
// import 'package:bende_fazla_final/product/constants/index.dart';
// import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
// import 'package:bende_fazla_final/product/extension/index.dart';
// import 'package:bende_fazla_final/product/utility/index.dart';
// import 'package:bende_fazla_final/product/widgets/index.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// class ForgotPassOtpView extends StatefulWidget {
//   const ForgotPassOtpView({super.key});

//   @override
//   State<ForgotPassOtpView> createState() => _ForgotPassOtpViewState();
// }

// class _ForgotPassOtpViewState extends State<ForgotPassOtpView> {
//   int get __otpFieldLenght => 6;
//   @override
//   Widget build(BuildContext context) {
//     return AuthBaseScaffold(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const AuthTitleWidget(title: AppStrings.kVerifyCodeTitle, subTitle: AppStrings.kVerifyCodeSub),
//           AppSizedBox.mid.height,
//           OtpTextField(
//             numberOfFields: __otpFieldLenght,
//             fillColor: AppColors.greyColor4,
//             filled: true,
//           ),
//           Padding(
//             padding: const AppPaddings.verticalPaddingHigh(),
//             child: AuthTextRichButton(
//               buttonDesc: AppStrings.kVerifyCodeNotArrived,
//               buttonLabel: AppStrings.kVerifyCodeTrySend,
//               onPressed: () {},
//             ),
//           ),
//           SizedBox(
//             width: double.infinity,
//             child: CustomElevatedButton(
//               onPressed: () {},
//               buttonTitle: AppStrings.kDone,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
