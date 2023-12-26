import 'dart:async';
import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:bende_fazla_final/feature/splash/splash_view.dart';
import 'package:bende_fazla_final/product/cache/shared_manager.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class SplashViewModel extends State<SplashView> with NavigatorManager {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () async {
      _sharedManager = SharedManager();
      _authRepository = AuthRepository(firebaseAuth: FirebaseAuth.instance);
      await initializeApp();
    });
  }

  late final SharedManager _sharedManager;
  late final AuthRepository _authRepository;
  bool isLoading = false;

  Future<void> initializeApp() async {
    _changeLoading();
    await _sharedManager.init();
    getOnboard();
    _changeLoading();
  }

  void _changeLoading() {
    isLoading = !isLoading;
  }

  //**
  // shareddan kaydedilen onboard degerini cekip durumunu kontrol ediyor.
  // true ise onboard ekranlarını gostermeden devam edecek
  // */
  Future<void> getOnboard() async {
    bool isOnboard = _sharedManager.getBool(AppSharedKeys.onboard) ?? false;
    if (isOnboard) {
      final user = await _authRepository.checkUserLogin();
      if (user == null) {
        // ignore: use_build_context_synchronously
        navigatePushNamedAndRemoveUntil(context, Routes.welcome);
      } else {
        // ignore: use_build_context_synchronously
        Navigator.pushNamedAndRemoveUntil(context, Routes.base, (route) => false);
      }
    } else {
      navigatePushNamedAndRemoveUntil(context, Routes.onboard);
    }
  }
}
