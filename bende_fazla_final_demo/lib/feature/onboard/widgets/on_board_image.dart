part of '../on_board_view.dart';

class _OnBoardImage extends StatelessWidget {
  const _OnBoardImage({required this.model});

  final OnboardModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppBoxDecoration.onboardDecoration,
      child: CustomCenteredLottie(
        lottie: model.img,
        height: MediaQuery.sizeOf(context).width * 0.7,
      ),
    );
  }
}
