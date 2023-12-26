import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

import '../../product/utility/app_box_decoration.dart';

part 'widgets/welcome_text_widget.dart';
part 'widgets/welcome_buttons_widget.dart';
part 'widgets/welcome_image_widget.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purplePrimary,
      appBar: AppBar(backgroundColor: AppColors.whiteColor),
      body: const Column(
        children: [
          Expanded(
            child: _WelcomeImageWidget(),
          ),
          Expanded(
            child: Padding(
              padding: AppPaddings.pagePadding(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _WelcomeTextWidget(),
                  _WelcomeButtonsWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
