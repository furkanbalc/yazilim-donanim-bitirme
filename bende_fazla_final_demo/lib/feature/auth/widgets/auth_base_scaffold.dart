import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

class AuthBaseScaffold extends StatelessWidget with NavigatorManager {
  const AuthBaseScaffold({
    super.key,
    this.appBarTitle,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.resizeToAvoidBottomInset,
  });

  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final String? appBarTitle;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool? resizeToAvoidBottomInset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(appBarTitle ?? ''),
        leading: CustomIconButton(
          onPressed: () => navigatePop(context),
          icon: AppIcons.kBackIcon,
        ),
      ),
      body: Padding(
        padding: const AppPaddings.pagePadding() + const AppPaddings.topPaddingLow(),
        child: Column(
          mainAxisSize: mainAxisSize ?? MainAxisSize.max,
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
          children: children,
        ),
      ),
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: floatingActionButton,
    );
  }
}
