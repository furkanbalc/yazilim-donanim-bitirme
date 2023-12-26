import 'package:bende_fazla_final/core/widgets/forgot_pass_card_widget.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:flutter/material.dart';

class LoginForgotPassBottomSheet extends StatelessWidget with NavigatorManager {
  const LoginForgotPassBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ForgetPassCardWidget(
          icon: AppIcons.kEmailIcon,
          onTap: () => navigatePopAndPushNamed(context, Routes.forgotPassMail),
          title: AppStrings.kFormEmail,
          subTitle: AppStrings.kResetEmailCardDesc,
        ),
        AppSizedBox.low.height,
        ForgetPassCardWidget(
          icon: AppIcons.kPhoneIcon,
          onTap: () {},
          title: AppStrings.kPhoneNumber,
          subTitle: AppStrings.kResetPhoneCardDesc,
        ),
      ],
    );
  }
}
