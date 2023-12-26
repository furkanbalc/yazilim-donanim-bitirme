import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier with ValidateManager {
  final AuthRepository _authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );

  bool isVisible = true;
  bool isAutoValidate = false;

  String email = '';
  String password = '';

  void changeAutoValidate() {
    isAutoValidate = !isAutoValidate;
    notifyListeners();
  }

  void changeVisibility() {
    isVisible = !isVisible;
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

  void loginUser({
    required BuildContext context,
    required bool mounted,
  }) {
    _authRepository.logInUser(
      context: context,
      email: email,
      password: password,
      mounted: mounted,
    );
  }

  String? emailValidate(String? value) {
    if (email.isNotEmpty) {
      return emailValidator(value);
    }
    return null;
  }

  String? passwordValidate(String? value) {
    if (password.isNotEmpty) {
      return loginPasswordValidator(value);
    }
    return null;
  }
}
