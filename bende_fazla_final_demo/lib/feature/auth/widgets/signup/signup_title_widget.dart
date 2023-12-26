part of '../../view/signup_view.dart';

class _SignupTitleWidget extends StatelessWidget {
  const _SignupTitleWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: AppStrings.kAppName,
              style: AppStyles.kAppNameColor,
              children: [
                TextSpan(
                  text: AppStrings.kSignupTitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily: AppStrings.kSFProFont,
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackPrimary,
                      ),
                ),
              ],
            ),
          ),
          Text(
            AppStrings.kSignupSub,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontFamily: AppStrings.kSFProFont,
                  color: AppColors.greyPrimary,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
