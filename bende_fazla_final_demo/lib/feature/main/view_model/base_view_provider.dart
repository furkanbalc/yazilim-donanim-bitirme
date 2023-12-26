import 'package:bende_fazla_final/feature/auth/model/user_model.dart';
import 'package:bende_fazla_final/feature/auth/repository/auth_repository.dart';
import 'package:bende_fazla_final/feature/auth/repository/user_info_repository.dart';
import 'package:bende_fazla_final/feature/main/model/bottom_nav_items.dart';
import 'package:bende_fazla_final/feature/main/view/home_view.dart';
import 'package:bende_fazla_final/feature/main/view/product_view.dart';
import 'package:bende_fazla_final/feature/main/view/profile/profile_view.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class BaseViewProvider extends ChangeNotifier with NavigatorManager {
  final UserInfoRepository _userInfoRepository = UserInfoRepository(
    firebaseAuth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  );
  final AuthRepository _authRepository = AuthRepository(
    firebaseAuth: FirebaseAuth.instance,
  );
  final List<BottomNavigationBarItem> items = BottomBarViews().views;

  int get selectedIndex => _selectedIndex;

  int _selectedIndex = 0;

  void onItemTapped(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void reset() {
    _selectedIndex = 0;
    notifyListeners();
  }

  Widget body(BuildContext context) {
    switch (_selectedIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const ProductView();
      case 3:
        return const Center(child: Text('Message'));
      //return const MessageView();
      case 4:
        return const ProfileView();
      default:
        //return const HomeView();
        return const HomeView();
    }
  }

  void signOut({
    required BuildContext context,
    required bool mounted,
  }) {
    _authRepository.signOut(
      context: context,
      mounted: mounted,
    );
  }

  UserModel? user;

  //**
  //  GET USER INFO
  // */
  Future<void> getCurrentUserInfo() async {
    user = await _userInfoRepository.getCurrentUserInfo();
    notifyListeners();
  }
}
