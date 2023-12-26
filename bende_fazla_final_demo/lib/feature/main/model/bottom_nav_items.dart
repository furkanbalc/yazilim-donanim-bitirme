import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:flutter/material.dart';

class BottomBarViews {
  late final List<BottomNavigationBarItem> _views;
  List<BottomNavigationBarItem> get views => _views;

  BottomBarViews() {
    _views = [
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.kHomeIcon),
        label: AppNavBarItems.home.value,
      ),
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.kObjectIcon),
        label: AppNavBarItems.product.value,
      ),
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.kAddIcon),
        label: AppNavBarItems.add.value,
      ),
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.kMessageIcon),
        label: AppNavBarItems.message.value,
      ),
      BottomNavigationBarItem(
        icon: const Icon(AppIcons.kProfileIcon),
        label: AppNavBarItems.profile.value,
      ),
    ];
  }
}
