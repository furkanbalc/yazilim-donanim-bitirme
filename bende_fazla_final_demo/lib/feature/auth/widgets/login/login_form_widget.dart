part of '../../view/login_view.dart';

class _LoginFormWidget extends StatefulWidget {
  const _LoginFormWidget();

  @override
  State<_LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<_LoginFormWidget> {
  late final GlobalKey<FormState> _key;

  @override
  void initState() {
    _key = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    _key.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final read = context.read<LoginProvider>();
    final watch = context.watch<LoginProvider>();
    return Form(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            onChanged: read.setEmail,
            validator: read.emailValidate,
            hintText: AppStrings.kFormEmail,
            autofillHints: AutofillHints.email,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: AppIcons.kEmailIcon,
            textInputAction: TextInputAction.next,
          ),
          AppSizedBox.low.height,
          CustomTextField(
            onChanged: read.setPassword,
            validator: read.passwordValidate,
            hintText: AppStrings.kFormPass,
            autofillHints: AutofillHints.password,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            prefixIcon: AppIcons.kPasswordIcon,
            obscureText: watch.isVisible,
            suffixIcon: watch.isVisible ? AppIcons.kVisibilty : AppIcons.kVisibiltyOff,
            suffixOnPressed: () => read.changeVisibility(),
          ),
          const _LoginForgotPassButton(),
          CustomElevatedButton(
            onPressed: () {
              if (_key.currentState != null) {
                if (_key.currentState!.validate()) {
                  read.loginUser(context: context, mounted: mounted);
                } else {
                  read.changeAutoValidate();
                  showAlerDialog(context: context, message: 'Lütfen bilgileri eksiksiz doldurun');
                }
              }
            },
            text: AppStrings.kLogin,
          ),
        ],
      ),
    );
  }
}
