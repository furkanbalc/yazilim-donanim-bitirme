import 'package:bende_fazla_final/feature/splash/splash_view_model.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

part 'widgets/splash_app_logo.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purplePrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(child: _SplashAppLogo()),
          Expanded(child: isLoading ? const CustomCenteredCircularProgress() : const SizedBox()),
        ],
      ),
    );
  }
}
