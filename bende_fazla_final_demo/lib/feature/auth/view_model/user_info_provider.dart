import 'dart:io';
import 'dart:typed_data';

import 'package:bende_fazla_final/feature/auth/repository/user_info_repository.dart';
import 'package:bende_fazla_final/feature/auth/view/user_info/image_picker_view.dart';
import 'package:bende_fazla_final/product/helper/show_alert_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserInfoProvider extends ChangeNotifier {
  final UserInfoRepository _userInfoRepository = UserInfoRepository(
    firebaseAuth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  );
  File? imageCamera;
  Uint8List? imageGallery;

  String username = '';

  void setUsername(String value) {
    username = value;
    notifyListeners();
  }

  void setImageCamera(File? imageCamera) {
    imageCamera = imageCamera;
    notifyListeners();
  }

  void setImageGallery(Uint8List? imageGallery) {
    imageGallery = imageGallery;
    notifyListeners();
  }

  //**
  //  SAVE USER INFO
  // */
  saveUserInfoFirestore({
    required BuildContext context,
    required bool mounted,
  }) {
    if (username.isEmpty) {
      showAlerDialog(context: context, message: UserInfoProviderStrings.usernameIsNotEmpty.value);
    } else if (username.length < 3 || username.length > 30) {
      showAlerDialog(context: context, message: UserInfoProviderStrings.usernameMaxLenght.value);
    } else {
      _userInfoRepository.saveUserInfoFirestore(
        context: context,
        username: username,
        profileImage: imageCamera ?? imageGallery,
        mounted: mounted,
      );
    }
  }

  Future<void> pickImageFromCamera({required BuildContext context}) async {
    Navigator.of(context).pop();
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      imageCamera = File(image!.path);
      imageGallery = null;
      notifyListeners();
    } catch (e) {
      // ignore: use_build_context_synchronously
      showAlerDialog(context: context, message: e.toString());
    }
  }

  Future<void> pickImageFromGallery({required BuildContext context}) async {
    Navigator.pop(context);
    final image = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ImagePickerView(),
      ),
    );
    if (image == null) return;
    imageGallery = image;
    imageCamera = null;
    notifyListeners();
  }
}

enum UserInfoProviderStrings {
  usernameIsNotEmpty('Lütfen bir kullanıcı adı belirtin'),
  usernameMaxLenght('Kullanıcı adı 3-30 karakter aralığında olmalıdır.'),
  ;

  final String value;
  const UserInfoProviderStrings(this.value);
}
