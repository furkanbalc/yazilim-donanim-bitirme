import 'package:bende_fazla_final/feature/auth/view_model/user_info_provider.dart';
import 'package:bende_fazla_final/feature/auth/widgets/auth_base_scaffold.dart';
import 'package:bende_fazla_final/feature/auth/widgets/user_info/image_picker_icon.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/helper/custom_bottom_sheet.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:bende_fazla_final/product/widgets/custom_elevated_button.dart';
import 'package:bende_fazla_final/product/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserInfoView extends StatefulWidget {
  const UserInfoView({super.key});

  @override
  State<UserInfoView> createState() => _UserInfoViewState();
}

class _UserInfoViewState extends State<UserInfoView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    final watch = context.watch<UserInfoProvider>();
    final read = context.read<UserInfoProvider>();
    return AuthBaseScaffold(
      resizeToAvoidBottomInset: true,
      appBarTitle: AppStrings.kUserInfo,
      floatingActionButton: CustomElevatedButton(
        onPressed: () => watch.saveUserInfoFirestore(context: context, mounted: mounted),
        buttonWidth: MediaQuery.sizeOf(context).width * 0.9,
        text: AppStrings.kNext,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      children: [
        _userInfoTitle(context),
        AppSizedBox.ultra.height,
        _addProfilePhoto(context, watch),
        AppSizedBox.med.height,
        _userInfoTextField(read),
      ],
    );
  }

  Widget _userInfoTextField(UserInfoProvider read) {
    return CustomTextField(
      onChanged: read.setUsername,
      hintText: AppStrings.kFormName,
      autofillHints: AutofillHints.name,
      keyboardType: TextInputType.name,
      maxLenght: 30,
      prefixIcon: AppIcons.kProfileIcon,
      textInputAction: TextInputAction.next,
    );
  }

  Widget _userInfoTitle(BuildContext context) {
    return Text(
      AppStrings.kUserInfoDesc,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.greyPrimary),
    );
  }

  Widget _addProfilePhoto(BuildContext context, UserInfoProvider watch) {
    return InkWell(
      onTap: () async {
        await customBottomSheet(
          context: context,
          title: AppStrings.kProfilPhoto,
          body: Row(
            children: [
              ImagePickerIcon(
                onTap: () => watch.pickImageFromCamera(context: context),
                icon: Icons.camera_alt_rounded,
                text: AppStrings.kCamera,
              ),
              AppSizedBox.med.width,
              ImagePickerIcon(
                onTap: () => watch.pickImageFromGallery(context: context),
                icon: Icons.photo_camera_back_rounded,
                text: AppStrings.kGallery,
              ),
            ],
          ),
        );
      },
      child: _profilePhotoWidget(context, watch),
    );
  }

  Widget _profilePhotoWidget(BuildContext context, UserInfoProvider watch) {
    return Container(
      width: MediaQuery.sizeOf(context).height / 5,
      height: MediaQuery.sizeOf(context).height / 5,
      padding: const AppPaddings.allPaddingMed(),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: watch.imageCamera == null && watch.imageGallery == null ? AppColors.greyLight : AppColors.whiteColor,
        border: Border.all(
          color: watch.imageCamera == null && watch.imageGallery == null ? Colors.transparent : AppColors.purplePrimary,
          width: 5,
        ),
        image: watch.imageCamera != null || watch.imageGallery != null
            ? DecorationImage(
                fit: BoxFit.scaleDown,
                image: watch.imageGallery != null
                    ? MemoryImage(watch.imageGallery!)
                    : FileImage(watch.imageCamera!) as ImageProvider,
              )
            : null,
      ),
      child: Padding(
        padding: const AppPaddings.allPaddingHigh(),
        child: Icon(
          Icons.add_a_photo_rounded,
          size: 48,
          color: watch.imageCamera == null && watch.imageGallery == null ? AppColors.greyLighter : Colors.transparent,
        ),
      ),
    );
  }
}
