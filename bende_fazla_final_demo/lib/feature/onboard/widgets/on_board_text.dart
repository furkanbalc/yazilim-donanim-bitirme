part of '../on_board_view.dart';

class _OnboardText extends StatelessWidget {
  const _OnboardText({required this.model});

  final OnboardModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const AppPaddings.horizontalPaddingUltra(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(model.title, style: Theme.of(context).textTheme.headlineSmall),
          AppSizedBox.med.height,
          Text(
            model.desc,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary),
          ),
        ],
      ),
    );
  }
}
