import 'package:bende_fazla_final/feature/auth/model/user_model.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/utility/app_paddings.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:flutter/material.dart';

class ProfileDetailView extends StatefulWidget {
  const ProfileDetailView({super.key, this.userModel});
  final UserModel? userModel;

  @override
  State<ProfileDetailView> createState() => _ProfileDetailViewState();
}

class _ProfileDetailViewState extends State<ProfileDetailView> {
  @override
  void initState() {
    super.initState();
    name = TextEditingController(text: widget.userModel?.username);
    email = TextEditingController(text: widget.userModel?.email);
    phone = TextEditingController(text: widget.userModel?.phoneNumber ?? 'Telefon numarası giriniz');
    adress = TextEditingController(text: widget.userModel?.location ?? 'Adres giriniz');
  }

  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController adress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Profil bilgilerim')),
      body: Padding(
        padding: const AppPaddings.pagePadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const AppPaddings.allPaddingHigh(),
                  width: MediaQuery.sizeOf(context).height / 10,
                  height: MediaQuery.sizeOf(context).height / 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.purplePrimary, width: 5),
                    image: DecorationImage(
                      fit: BoxFit.scaleDown,
                      image: NetworkImage(widget.userModel?.profileImageUrl ?? ''),
                    ),
                  ),
                ),
                CustomTextButton(
                  onPressed: () {},
                  buttonLabel: 'Değiştir',
                  decoration: TextDecoration.underline,
                )
              ],
            ),
            const Text('Ad Soyad'),
            TextField(
              controller: name,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(),
                fillColor: AppColors.whiteColor,
              ),
            ),
            AppSizedBox.med.height,
            const Text('E-posta'),
            TextField(
              controller: email,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(),
                fillColor: AppColors.whiteColor,
              ),
            ),
            AppSizedBox.med.height,
            const Text('Telefon numarası'),
            TextField(
              controller: phone,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(),
                fillColor: AppColors.whiteColor,
              ),
            ),
            AppSizedBox.med.height,
            const Text('Adres'),
            TextField(
              controller: adress,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(),
                fillColor: AppColors.whiteColor,
              ),
            ),
            const Spacer(),
            CustomElevatedButton(onPressed: () {}, text: 'Kaydet'),
          ],
        ),
      ),
    );
  }
}
