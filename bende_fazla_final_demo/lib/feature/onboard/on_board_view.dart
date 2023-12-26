import 'package:bende_fazla_final/feature/onboard/model/on_board_model.dart';
import 'package:bende_fazla_final/feature/onboard/on_board_view_model.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/app_box_decoration.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

part 'widgets/on_board_image.dart';
part 'widgets/on_board_text.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends OnBoardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: _onboardAppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          _onboardPageView(),
          _onBoardTabIndicator(context),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _onboardFab(context),
    );
  }

  Widget _onboardPageView() {
    return PageView.builder(
      onPageChanged: onPageChanged,
      controller: pageController,
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var model = items[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: _OnBoardImage(model: model)),
            Expanded(child: _OnboardText(model: model)),
          ],
        );
      },
    );
  }

  Widget _onBoardTabIndicator(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height / 3,
      child: CustomTabPageSelector(selectedIndex: selectedIndex, tabLenght: items.length),
    );
  }

  Widget _onboardFab(BuildContext context) {
    return CustomElevatedButton(
      buttonWidth: MediaQuery.sizeOf(context).width * 0.9,
      onPressed: isLastPage
          ? () {
              changeOnboardStatus();
              navigatePushNamedAndRemoveUntil(context, Routes.welcome);
            }
          : animateToNextPage,
      text: isLastPage ? AppStrings.kGetStarted : AppStrings.kNext,
    );
  }

  AppBar _onboardAppBar() {
    return AppBar(
      backgroundColor: AppColors.purplePrimary,
      leading: isFirstPage
          ? null
          : CustomIconButton(
              onPressed: animateToPrevPage,
              icon: AppIcons.kBackIcon,
              iconColor: AppColors.whiteColor,
            ),
      actions: [
        isLastPage
            ? const SizedBox.shrink()
            : CustomTextButton(
                onPressed: animateToLastPage,
                buttonLabel: AppStrings.kSkip,
                color: AppColors.whiteColor,
              ),
      ],
    );
  }
}
