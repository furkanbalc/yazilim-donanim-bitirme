part of '../../view/signup_view.dart';

class _SignupFormWidget extends StatefulWidget {
  const _SignupFormWidget();

  @override
  State<_SignupFormWidget> createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<_SignupFormWidget> {
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
    final read = context.read<SignupProvider>();
    final watch = context.watch<SignupProvider>();
    return Form(
      key: _key,
      autovalidateMode: watch.isAutoValidate ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
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
          AppSizedBox.low.height,
          CustomTextField(
            onChanged: read.setTryPassword,
            validator: read.tryPasswordValidate,
            hintText: AppStrings.kFormTryPass,
            autofillHints: AutofillHints.password,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.done,
            prefixIcon: AppIcons.kPasswordIcon,
            obscureText: watch.isVisible2,
            suffixIcon: watch.isVisible2 ? AppIcons.kVisibilty : AppIcons.kVisibiltyOff,
            suffixOnPressed: () => read.changeVisibility2(),
          ),
          AppSizedBox.high.height,
          CustomElevatedButton(
            onPressed: () {
              if (_key.currentState != null) {
                if (_key.currentState!.validate()) {
                  read.sigunUpUser(context: context, mounted: mounted);
                } else {
                  read.changeAutoValidate();
                  showAlerDialog(context: context, message: 'Lütfen bilgileri eksiksiz doldurun');
                }
              }
            },
            text: AppStrings.kSignup,
          ),
        ],
      ),
    );
  }
}
