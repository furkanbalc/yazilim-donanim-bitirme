part of '../welcome_view.dart';

class _WelcomeImageWidget extends StatelessWidget {
  const _WelcomeImageWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration.welcomeDecorations,
      child: CustomCenteredLottie(lottie: AppLotties.welcome.toLottie),
    );
  }
}
