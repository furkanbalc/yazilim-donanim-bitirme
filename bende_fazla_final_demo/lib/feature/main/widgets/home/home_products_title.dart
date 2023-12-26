part of '../../view/home_view.dart';

class _HomeProductsTitle extends StatelessWidget {
  const _HomeProductsTitle({required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary)),
        CustomTextButton(onPressed: () {}, buttonLabel: 'Tümünü Gör', fontSize: 15),
      ],
    );
  }
}
