part of '../splash_view.dart';

class _SplashAppLogo extends StatelessWidget {
  const _SplashAppLogo();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CustomImageWidget(
        imageName: AppImages.appLogo.toImage,
        width: MediaQuery.sizeOf(context).width / 2,
      ),
    );
  }
}
