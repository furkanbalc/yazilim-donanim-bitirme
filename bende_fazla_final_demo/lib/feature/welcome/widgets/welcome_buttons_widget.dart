part of '../welcome_view.dart';

class _WelcomeButtonsWidget extends StatelessWidget with NavigatorManager {
  const _WelcomeButtonsWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomOutlinedButton(
            buttonTitle: AppStrings.kLogin,
            butonColor: AppColors.purplePrimary,
            onPressed: () => navigatePushNamed(context, Routes.login),
          ),
        ),
        AppSizedBox.low.width,
        Expanded(
          child: CustomElevatedButton(
            text: AppStrings.kSignup,
            onPressed: () => navigatePushNamed(context, Routes.signup),
          ),
        ),
      ],
    );
  }
}
