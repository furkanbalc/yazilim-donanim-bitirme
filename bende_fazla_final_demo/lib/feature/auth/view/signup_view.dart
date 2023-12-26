import 'package:bende_fazla_final/feature/auth/view_model/signup_provider.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_base_scaffold.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_text_rich_button.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/helper/show_alert_dialog.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part '../widgets/signup/signup_form_widget.dart';
part '../widgets/signup/signup_title_widget.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return AuthBaseScaffold(
      children: [
        const _SignupTitleWidget(),
        AppSizedBox.med.height,
        const _SignupFormWidget(),
        AppSizedBox.high.height,
        AuthTextRichButton(
          buttonDesc: AppStrings.kAlreadyHaveAnAccount,
          buttonLabel: AppStrings.kLogin,
          onPressed: () => navigatePushNamed(context, Routes.login),
        ),
      ],
    );
  }
}
