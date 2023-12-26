import 'package:bende_fazla_final/feature/auth/model/user_model.dart';
import 'package:bende_fazla_final/feature/main/view_model/base_view_provider.dart';
import 'package:bende_fazla_final/feature/main/view_model/profile_view_provider.dart';
import 'package:bende_fazla_final/feature/main/widgets/profile/profile_statistic_detail_widget.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/app_sized_box.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/routes/routes.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/utility/mixin/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
part '../../widgets/profile/profile_card_widget.dart';
part '../../widgets/profile/profile_statistic_card_widget.dart';
part '../../widgets/profile/user_info_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    final readProfile = context.read<ProfileProvider>();
    final readBase = context.read<BaseViewProvider>();
    var model = readBase.user;
    return Padding(
      padding: const AppPaddings.horizontalPaddingMed(),
      child: Column(
        children: [
          _UserInfoWidget(model: model),
          AppSizedBox.med.height,
          Expanded(
            child: ListView(
              children: [
                ProfileStatisticCardWidget(model: model!),
                _ProfileCardWidget(
                  icon: AppIcons.kProfileIcon,
                  text: AppStrings.kAccountDetail,
                  onTap: () {
                    Navigator.pushNamed(context, Routes.profileDetail, arguments: model);
                  },
                ),
                _ProfileCardWidget(
                  icon: Icons.settings,
                  text: AppStrings.kSettings,
                  onTap: () {},
                ),
                _ProfileCardWidget(
                  icon: Icons.logout_outlined,
                  text: AppStrings.kLogout,
                  onTap: () async {
                    await readProfile.signOut(context: context, mounted: mounted);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
