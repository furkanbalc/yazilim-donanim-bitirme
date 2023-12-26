import 'package:bende_fazla_final/feature/auth/view/login_view.dart';
import 'package:bende_fazla_final/product/helper/show_alert_dialog.dart';
import 'package:bende_fazla_final/product/helper/show_loading_dialog.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  AuthRepository({required this.firebaseAuth});
  final FirebaseAuth firebaseAuth;

  UserCredential? userCredential;
  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  //**
  // SING UP
  // */
  Future<void> signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required bool mounted,
  }) async {
    try {
      showLoadingDialog(context: context, message: AuthRepositoryStrings.creatingAccount.value);
      userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(context, Routes.userInfo, (route) => false);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == AuthRepositoryStrings.emailAlreadyInUse.value) {
        showAlerDialog(context: context, message: AuthRepositoryStrings.emailAlreadyInUseMess.value);
      }
    } catch (e) {
      Navigator.pop(context);
      showAlerDialog(context: context, message: e.toString());
    }
  }

  //**
  // LOGIN
  // */
  Future<void> logInUser({
    required BuildContext context,
    required String email,
    required String password,
    required bool mounted,
  }) async {
    try {
      showLoadingDialog(context: context, message: AuthRepositoryStrings.login.value);
      userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(context, Routes.base, (route) => false);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == AuthRepositoryStrings.userNotFound.value) {
        showAlerDialog(context: context, message: AuthRepositoryStrings.userNotFoundMess.value);
      } else if (e.code == AuthRepositoryStrings.wrongPass.value) {
        showAlerDialog(context: context, message: AuthRepositoryStrings.wrongPassMess.value);
      }
      showAlerDialog(context: context, message: AuthRepositoryStrings.wrongEmailOrPass.value);
    } catch (e) {
      Navigator.pop(context);
      showAlerDialog(context: context, message: AuthRepositoryStrings.wrongEmailOrPass.value);
    }
  }

  //**
  // SIGN OUT
  // */
  void signOut({
    required BuildContext context,
    required bool mounted,
  }) async {
    try {
      showLoadingDialog(context: context, message: AuthRepositoryStrings.signOut.value);
      await firebaseAuth.signOut();
      userCredential = null;
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(context, Routes.welcome, (route) => false);
    } catch (e) {
      Navigator.pop(context);
      showAlerDialog(context: context, message: e.toString());
    }
  }

  Future<User?> checkUserLogin() async {
    User? user = FirebaseAuth.instance.currentUser;
    return user;
  }

  //**
  // FORGOT PASS EMAIL
  // */
  void resetPasswordMail({
    required BuildContext context,
    required String email,
    required bool mounted,
  }) async {
    try {
      showLoadingDialog(context: context, message: AuthRepositoryStrings.forgotPassMail.value);
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      if (!mounted) return;
      Navigator.pop(context);
      showAlerDialog(
        context: context,
        message: email + AuthRepositoryStrings.forgotPassMailMess.value,
        barrierDismissible: false,
        route: const LoginView(),
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == AuthRepositoryStrings.userNotFound.value) {
        showAlerDialog(context: context, message: AuthRepositoryStrings.userNotFoundMess.value);
      } else {
        showAlerDialog(context: context, message: e.toString());
      }
    } catch (e) {
      Navigator.pop(context);
      showAlerDialog(context: context, message: e.toString());
    }
  }
}

enum AuthRepositoryStrings {
  creatingAccount('Hesap oluşturuluyor ...'),
  login('Giriş yapılıyor ...'),
  signOut('Oturum kapatılıyor ...'),
  forgotPassMail('Doğulama kodu gönderiliyor ...'),

  forgotPassMailMess('\nŞifre sıfırlama bağlantısını e-posta adresine gönderdik. Bağlantı üzerinden şifreni sıfırlayabilirsin.'),

  wrongEmailOrPass('Hatalı e-posta veya şifre'),
  emailAlreadyInUseMess('Bu e-posta adresi zaten kullanımda. Farklı bir tane deneyin.'),
  userNotFoundMess('Bu e-posta adresi kayıtl değıl. Farklı bir tane deneyin.'),
  wrongPassMess('Hatalı şifre'),

  emailAlreadyInUse('email-already-in-use'),
  userNotFound('user-not-found'),
  wrongPass('wrong-password'),
  ;

  final String value;
  const AuthRepositoryStrings(this.value);
}
