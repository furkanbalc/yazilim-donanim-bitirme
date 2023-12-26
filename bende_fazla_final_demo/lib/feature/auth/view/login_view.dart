import 'package:bende_fazla_final/feature/auth/view_model/login_provider.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_base_scaffold.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_text_rich_button.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_title_widget.dart';
import 'package:bende_fazla_final/feature/auth/widgets/login/login_forgot_pass_bottom_sheet.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/helper/custom_bottom_sheet.dart';
import 'package:bende_fazla_final/product/helper/show_alert_dialog.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part '../widgets/login/login_form_widget.dart';
part '../widgets/login/login_forgot_pass_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return AuthBaseScaffold(
      children: [
        const AuthTitleWidget(title: AppStrings.kLoginTitle, subTitle: AppStrings.kLoginSub),
        AppSizedBox.med.height,
        const _LoginFormWidget(),
        AppSizedBox.high.height,
        AuthTextRichButton(
          buttonDesc: AppStrings.kDontHaveAnAccount,
          buttonLabel: AppStrings.kSignup,
          onPressed: () => navigatePushNamed(context, Routes.signup),
        ),
      ],
    );
  }
}
