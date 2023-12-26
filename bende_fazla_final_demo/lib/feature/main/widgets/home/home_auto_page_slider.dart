part of '../../view/home_view.dart';

class _HomeAutoPageSlider extends StatelessWidget {
  const _HomeAutoPageSlider();

  @override
  Widget build(BuildContext context) {
    final sliderItems = context.read<HomeViewProvider>().items;
    return CarouselSlider.builder(
      itemCount: sliderItems.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          decoration: BoxDecoration(
            color: index % 2 == 1 ? AppColors.redColor.withOpacity(0.4) : AppColors.purpleLight,
            borderRadius: AppBorderRadius.circularAll(),
            border: Border.all(color: AppColors.greyPrimary, width: 2),
          ),
          child: HomeSliderTitle(text: sliderItems[index]),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2 / 1,
        viewportFraction: 0.8,
      ),
    );
  }
}
