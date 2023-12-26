part of '../../view/login_view.dart';

class _LoginForgotPassButton extends StatelessWidget {
  const _LoginForgotPassButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomTextButton(
        decoration: TextDecoration.underline,
        onPressed: () => customBottomSheet(
          context: context,
          title: AppStrings.kResetPass,
          body: const LoginForgotPassBottomSheet(),
        ),
        buttonLabel: AppStrings.kIforgotPass,
      ),
    );
  }
}
