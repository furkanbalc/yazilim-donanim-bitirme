import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  final AuthRepository _authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );

  Future<void> signOut({
    required BuildContext context,
    required bool mounted,
  }) async {
    _authRepository.signOut(
      context: context,
      mounted: mounted,
    );
  }
}
