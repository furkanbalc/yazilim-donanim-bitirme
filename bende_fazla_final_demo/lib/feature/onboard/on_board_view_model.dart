import 'package:bende_fazla_final/feature/onboard/model/on_board_items.dart';
import 'package:bende_fazla_final/feature/onboard/model/on_board_model.dart';
import 'package:bende_fazla_final/feature/onboard/on_board_view.dart';
import 'package:bende_fazla_final/product/cache/shared_manager.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:flutter/material.dart';

abstract class OnBoardViewModel extends State<OnboardView> with NavigatorManager {
  @override
  void initState() {
    super.initState();
    sharedManager = SharedManager();
    items = OnboardItems().onBoarditems;
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  late final SharedManager sharedManager;
  late final PageController pageController;
  late final List<OnboardModel> items;

  int selectedIndex = 0;
  bool isOnboardStatus = false;

  bool get isLastPage => _lastIndex == selectedIndex;
  bool get isFirstPage => selectedIndex == 0;

  int get _nextIndex => selectedIndex + 1;
  int get _prevIndex => selectedIndex - 1;
  int get _lastIndex => items.length - 1;

  // sharedManageri baslatip onboard durumunu hafızaya kaydeder
  Future<void> _sharedInitAndSave() async {
    await sharedManager.init();
    sharedManager.saveBool(AppSharedKeys.onboard, isOnboardStatus);
  }

  //**
  // onboard ekranı gosterildikten sonra durumu true yapılıp shared preferencese kaydedildi
  // onboard ekranı gosterildiyse bidaha gosterilmeyecek
  // */
  void changeOnboardStatus() {
    setState(() {
      isOnboardStatus = true;
    });
    _sharedInitAndSave();
  }

  // sayfa degisimlerini takip ederek sayfa indexini gunceller
  void onPageChanged(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  void animateToPage(int pageNumber) {
    pageController.animateToPage(
      pageNumber,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  animateToNextPage() => animateToPage(_nextIndex);
  animateToPrevPage() => animateToPage(_prevIndex);
  animateToLastPage() => animateToPage(_lastIndex);
}
