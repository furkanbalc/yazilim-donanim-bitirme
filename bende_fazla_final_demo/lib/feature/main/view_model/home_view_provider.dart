import 'package:bende_fazla_final/feature/main/model/home_ads_items.dart';
import 'package:flutter/material.dart';

class HomeViewProvider extends ChangeNotifier {
  final List<String> items = HomeAdsItems().items;
}
