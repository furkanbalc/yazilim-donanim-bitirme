part of '../../view/home_view.dart';

class _HomeProductCard extends StatelessWidget {
  const _HomeProductCard();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: _productImage(),
              ),
              Padding(
                padding: const AppPaddings.allPaddingLow(),
                child: _productBody(context),
              ),
            ],
          ),
          _favIconButton(),
        ],
      ),
    );
  }

  Positioned _favIconButton() {
    return Positioned(
      top: 10,
      right: 10,
      child: Column(
        children: [
          CustomIconButton(
            onPressed: () {},
            icon: Icons.favorite_border,
            iconSize: 30,
          ),
          const Text('value'),
        ],
      ),
    );
  }

  Column _productBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ilan başlığı: ', style: Theme.of(context).textTheme.titleMedium),
        Text('ürün durumu: ', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary)),
        AppSizedBox.low.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.circularAll() + AppBorderRadius.circularAll(),
                border: Border.all(),
              ),
              child: const Icon(
                AppIcons.kProfileIcon,
                size: 15,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'kullanıcı adı',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.greyPrimary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 20,
                  color: AppColors.greyPrimary,
                ),
                Text('uzaklık', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary)),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Container _productImage() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.circularAll(),
      ),
      child: const ClipRRect(borderRadius: AppBorderRadius.circularOnlyTop(), child: Placeholder()),
    );
  }
}
