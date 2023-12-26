import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassProvider extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );
  String email = '';

  void setEmail(String value) {
    email = value;
    notifyListeners();
  }

  void resetPasswordMail({
    required BuildContext context,
    required bool mounted,
  }) {
    _authRepository.resetPasswordMail(
      context: context,
      email: email,
      mounted: mounted,
    );
  }
}
