import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:flutter/material.dart';

extension AppSizedBoxExtension on AppSizedBox {
  SizedBox get width {
    switch (this) {
      case AppSizedBox.low:
        return const SizedBox(width: 10);
      case AppSizedBox.med:
        return const SizedBox(width: 20);
      case AppSizedBox.high:
        return const SizedBox(width: 30);
      case AppSizedBox.ultra:
        return const SizedBox(width: 50);
      default:
        return const SizedBox();
    }
  }

  SizedBox get height {
    switch (this) {
      case AppSizedBox.low:
        return const SizedBox(height: 10);
      case AppSizedBox.med:
        return const SizedBox(height: 20);
      case AppSizedBox.high:
        return const SizedBox(height: 30);
      case AppSizedBox.ultra:
        return const SizedBox(height: 50);
      default:
        return const SizedBox();
    }
  }
}
