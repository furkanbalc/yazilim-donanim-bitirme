import 'package:bende_fazla_final/feature/auth/model/user_model.dart';
import 'package:bende_fazla_final/feature/auth/view/forgot_password/forgot_pass_mail.dart';
import 'package:bende_fazla_final/feature/auth/view/login_view.dart';
import 'package:bende_fazla_final/feature/auth/view/signup_view.dart';
import 'package:bende_fazla_final/feature/auth/view/user_info/user_info_view.dart';
import 'package:bende_fazla_final/feature/main/view/base_view.dart';
import 'package:bende_fazla_final/feature/main/view/profile/profile_detail_view.dart';
import 'package:bende_fazla_final/feature/main/view/profile/profile_view.dart';
import 'package:bende_fazla_final/feature/onboard/on_board_view.dart';
import 'package:bende_fazla_final/feature/splash/splash_view.dart';
import 'package:bende_fazla_final/feature/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = 'splash';
  static const String onboard = 'onboard';
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String userInfo = 'userInfo';
  static const String forgotPassMail = 'forgotPassMail';
  static const String base = 'base';
  static const String profile = 'profile';
  static const String profileDetail = 'profileDetail';
  static const String test = 'test';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case onboard:
        return MaterialPageRoute(builder: (context) => const OnboardView());
      case welcome:
        return MaterialPageRoute(builder: (context) => const WelcomeView());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case forgotPassMail:
        return MaterialPageRoute(builder: (context) => const ForgotPassMailView());
      case signup:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case userInfo:
        return MaterialPageRoute(builder: (context) => const UserInfoView());
      case base:
        return MaterialPageRoute(builder: (context) => const BaseView());
      case profile:
        return MaterialPageRoute(builder: (context) => const ProfileView());
      case profileDetail:
        final UserModel userModel = settings.arguments as UserModel;
        return MaterialPageRoute(builder: (context) => ProfileDetailView(userModel: userModel));
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(body: Center(child: Text('Sayfa Yolu Bulunamadı!'))));
    }
  }
}
