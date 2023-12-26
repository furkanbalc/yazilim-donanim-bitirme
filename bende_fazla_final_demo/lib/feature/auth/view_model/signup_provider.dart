import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier with ValidateManager {
  final AuthRepository _authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );

  bool isVisible = true;
  bool isVisible2 = true;
  bool isAutoValidate = false;

  String email = '';
  String password = '';
  String tryPassword = '';
  String? signUpResult = '';

  void changeAutoValidate() {
    isAutoValidate = !isAutoValidate;
    notifyListeners();
  }

  void changeVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  void changeVisibility2() {
    isVisible2 = !isVisible2;
    notifyListeners();
  }

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void setPassword(String value) {
    password = value;
    notifyListeners();
  }

  void setTryPassword(String value) {
    tryPassword = value;
    notifyListeners();
  }

  void sigunUpUser({
    required BuildContext context,
    required bool mounted,
  }) {
    _authRepository.signUpUser(
      context: context,
      email: email,
      password: password,
      mounted: mounted,
    );
  }

  String? emailValidate(String? value) {
    return emailValidator(value);
  }

  String? passwordValidate(String? value) {
    return passwordValidator(value, password, tryPassword);
  }

  String? tryPasswordValidate(String? value) {
    return tryPasswordValidator(value, password, tryPassword);
  }
}
