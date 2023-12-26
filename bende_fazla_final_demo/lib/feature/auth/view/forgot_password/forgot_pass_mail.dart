// import 'package:bende_fazla_final/product/constants/index.dart';
// import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
// import 'package:bende_fazla_final/product/extension/index.dart';
// import 'package:bende_fazla_final/product/widgets/custom_elevated_button.dart';
// import 'package:flutter/material.dart';

// class ForgotPassMailView extends StatefulWidget {
//   const ForgotPassMailView({super.key});

//   @override
//   State<ForgotPassMailView> createState() => _ForgotPassMailViewState();
// }

// class _ForgotPassMailViewState extends State<ForgotPassMailView> {
//   @override
//   Widget build(BuildContext context) {
//     return AuthBaseScaffold(
//       child: Column(
//         children: [
//           const AuthTitleWidget(title: AppStrings.kResetPass, subTitle: AppStrings.kResetPassEmailDesc),
//           AppSizedBox.mid.height,
//           const CustomFormTextField(
//             prefixIcon: Icons.email,
//             labelText: AppStrings.kFormEmail,
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

import 'package:bende_fazla_final/feature/auth/view_model/forgot_pass_provider.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_base_scaffold.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_title_widget.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPassMailView extends StatefulWidget {
  const ForgotPassMailView({super.key});

  @override
  State<ForgotPassMailView> createState() => _ForgotPassMailViewState();
}

class _ForgotPassMailViewState extends State<ForgotPassMailView> {
  @override
  Widget build(BuildContext context) {
    final read = context.read<ForgotPassProvider>();
    final watch = context.watch<ForgotPassProvider>();

    return AuthBaseScaffold(
      resizeToAvoidBottomInset: true,
      appBarTitle: AppStrings.kForgotPassTitle,
      floatingActionButton: CustomElevatedButton(
        onPressed: () => watch.resetPasswordMail(context: context, mounted: mounted),
        buttonWidth: MediaQuery.sizeOf(context).width * 0.9,
        text: AppStrings.kNext,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      children: [
        const AuthTitleWidget(title: AppStrings.kForgotPass, subTitle: AppStrings.kResetPassEmailDesc),
        AppSizedBox.med.height,
        CustomTextField(
          onChanged: read.setEmail,
          hintText: AppStrings.kFormEmail,
          autofillHints: AutofillHints.email,
          keyboardType: TextInputType.emailAddress,
          prefixIcon: AppIcons.kEmailIcon,
          textInputAction: TextInputAction.next,
        ),
      ],
    );
  }
}
