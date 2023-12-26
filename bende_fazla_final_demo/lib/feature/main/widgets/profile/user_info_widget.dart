part of '../../view/profile/profile_view.dart';

class _UserInfoWidget extends StatelessWidget {
  const _UserInfoWidget({required this.model});

  final UserModel? model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).height / 6,
          height: MediaQuery.sizeOf(context).height / 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.purplePrimary, width: 5),
            image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: NetworkImage(model?.profileImageUrl ?? ''),
            ),
          ),
        ),
        AppSizedBox.low.height,
        Text(model?.username ?? '', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.blackPrimary)),
        Text(model?.email ?? '', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
