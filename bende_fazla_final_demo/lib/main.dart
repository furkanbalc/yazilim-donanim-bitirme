import 'package:bende_fazla_final/feature/auth/view_model/forgot_pass_provider.dart';
import 'package:bende_fazla_final/feature/auth/view_model/login_provider.dart';
import 'package:bende_fazla_final/feature/auth/view_model/signup_provider.dart';
import 'package:bende_fazla_final/feature/auth/view_model/user_info_provider.dart';
import 'package:bende_fazla_final/feature/main/view_model/base_view_provider.dart';
import 'package:bende_fazla_final/feature/main/view_model/home_view_provider.dart';
import 'package:bende_fazla_final/feature/main/view_model/profile_view_provider.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/theme/light_theme.dart';
import 'package:bende_fazla_final/product/utility/initialize/app_start.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<SignupProvider>(create: (context) => SignupProvider()),
        ChangeNotifierProvider<UserInfoProvider>(create: (context) => UserInfoProvider()),
        ChangeNotifierProvider<LoginProvider>(create: (context) => LoginProvider()),
        ChangeNotifierProvider<ForgotPassProvider>(create: (context) => ForgotPassProvider()),
        ChangeNotifierProvider<BaseViewProvider>(create: (context) => BaseViewProvider()),
        ChangeNotifierProvider<HomeViewProvider>(create: (context) => HomeViewProvider()),
        ChangeNotifierProvider<ProfileProvider>(create: (context) => ProfileProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.kAppName,
      theme: lightTheme(),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: Routes.splash,
    );
  }
}
