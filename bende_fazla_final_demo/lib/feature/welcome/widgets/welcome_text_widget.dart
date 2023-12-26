part of '../welcome_view.dart';

class _WelcomeTextWidget extends StatelessWidget {
  const _WelcomeTextWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppStrings.kWelcomeTitle, style: Theme.of(context).textTheme.displayMedium?.copyWith(color: AppColors.whiteColor)),
        //const Text(AppStrings.kAppName, style: AppStyles.kAppNameColorLarge),
        AppSizedBox.high.height,
        Text(
          AppStrings.kWelcomeSubTitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.whiteColor),
        ),
      ],
    );
  }
}
