import 'package:bende_fazla_final/feature/auth/model/user_model.dart';
import 'package:bende_fazla_final/product/enums/firebase_collections.dart';
import 'package:bende_fazla_final/product/helper/show_alert_dialog.dart';
import 'package:bende_fazla_final/product/helper/show_loading_dialog.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/service/storage_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class UserInfoRepository {
  final StorageService storageService = StorageService(firebaseStorage: FirebaseStorage.instance);
  UserInfoRepository({required this.firestore, required this.firebaseAuth});
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  //**
  //  GET USER INFO
  // */
  Future<UserModel?> getCurrentUserInfo() async {
    UserModel? user;
    final userInfo = await firestore.collection(FirabaseCollections.users.name).doc(firebaseAuth.currentUser?.uid).get();
    if (userInfo.data() == null) return user;
    user = UserModel.fromJson(userInfo.data()!);
    return user;
  }

  //**
  //  SAVE USER INFO
  // */
  void saveUserInfoFirestore({
    required String username,
    required var profileImage,
    required BuildContext context,
    required bool mounted,
  }) async {
    try {
      showLoadingDialog(context: context, message: UserInfoRepositoryStrings.savedUserInfo.value);
      String uid = firebaseAuth.currentUser!.uid;
      String profileImageUrl = profileImage is String ? profileImage : '';
      if (profileImage != null && profileImage is! String) {
        profileImageUrl = await storageService.storeFileToFirebase(
          'profileImage/$uid',
          profileImage,
        );
      }
      UserModel user = UserModel(
        email: firebaseAuth.currentUser!.email!,
        username: username,
        uid: uid,
        profileImageUrl: profileImageUrl,
        isActive: true,
      );
      await firestore.collection(FirabaseCollections.users.name).doc(uid).set(user.toJson());
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(context, Routes.base, (route) => false, arguments: user);
    } catch (e) {
      Navigator.pop(context);
      showAlerDialog(context: context, message: e.toString());
    }
  }
}

enum UserInfoRepositoryStrings {
  savedUserInfo('Kullanıcı bilgileri kaydediliyor ...'),
  ;

  final String value;
  const UserInfoRepositoryStrings(this.value);
}
