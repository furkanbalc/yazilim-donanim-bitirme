// import 'package:bende_fazla_final/product/helper/show_loading_dialog.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class ProductRepository {
//   ProductRepository({required this.firestore, required this.firebaseAuth});

//   final FirebaseFirestore firestore;
//   final FirebaseAuth firebaseAuth;

//   void saveUserInfoFirestore({
//     required String username,
//     required var profileImage,
//     required BuildContext context,
//     required bool mounted,
//   }) async {
//     try {
//       showLoadingDialog(context: context, message: ProductRepositoryStrings.savedUserInfo.value);
//       String uid = firebaseAuth.currentUser!.uid;
//       String profileImageUrl = profileImage is String ? profileImage : '';
//       if (profileImage != null && profileImage is! String) {
//         profileImageUrl = await storageService.storeFileToFirebase(
//           'profileImage/$uid',
//           profileImage,
//         );
//       }
//       UserModel user = UserModel(
//         email: firebaseAuth.currentUser!.email!,
//         username: username,
//         uid: uid,
//         profileImageUrl: profileImageUrl,
//         isActive: true,
//       );
//       await firestore.collection(FirabaseCollections.users.name).doc(uid).set(user.toJson());
//       if (!mounted) return;
//       Navigator.pushNamedAndRemoveUntil(context, Routes.base, (route) => false, arguments: user);
//     } catch (e) {
//       Navigator.pop(context);
//       showAlerDialog(context: context, message: e.toString());
//     }
//   }
// }

// enum ProductRepositoryStrings {
//   savedProductInfo('İlan bilgileri kaydediliyor ...'),
//   ;

//   final String value;
//   const ProductRepositoryStrings(this.value);
// }
