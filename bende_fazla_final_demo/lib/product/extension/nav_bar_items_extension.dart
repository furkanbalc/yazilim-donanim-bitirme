import 'package:bende_fazla_final/product/enums/index.dart';

extension NavBarItemsExtension on AppNavBarItems {
  int get index {
    switch (this) {
      case AppNavBarItems.home:
        return 0;
      case AppNavBarItems.product:
        return 1;
      case AppNavBarItems.message:
        return 2;
      case AppNavBarItems.profile:
        return 3;
      default:
        return 0;
    }
  }
}
