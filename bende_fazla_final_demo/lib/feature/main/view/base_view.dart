import 'package:bende_fazla_final/feature/main/view_model/base_view_provider.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/helper/custom_bottom_sheet.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseView extends StatefulWidget {
  const BaseView({super.key});

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  Widget build(BuildContext context) {
    var read = context.read<BaseViewProvider>();
    var watch = context.watch<BaseViewProvider>();
    // ignore: unused_local_variable
    var user = read.getCurrentUserInfo();
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.kAppName, style: AppStyles.kAppNameColor),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: const AppPaddings.topPaddingMed(),
        child: watch.body(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: read.items,
        currentIndex: watch.selectedIndex,
        selectedItemColor: AppColors.purplePrimary,
        unselectedItemColor: AppColors.greyLight,
        onTap: (value) {
          value == 2 ? customBottomSheet(context: context, title: 'İlan ekle', body: const SizedBox()) : read.onItemTapped(value);
        },
      ),
    );
  }
}
