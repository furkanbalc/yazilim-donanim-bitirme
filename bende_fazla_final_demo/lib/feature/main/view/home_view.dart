import 'package:bende_fazla_final/feature/main/view_model/home_view_provider.dart';
import 'package:bende_fazla_final/feature/main/widgets/home/home_slider_title.dart';
import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/enums/index.dart';
import 'package:bende_fazla_final/product/extension/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:bende_fazla_final/product/widgets/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part '../widgets/home/home_auto_page_slider.dart';
part '../widgets/home/home_product_card.dart';
part '../widgets/home/home_products_title.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _HomeAutoPageSlider(),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const AppPaddings.pagePadding() + const AppPaddings.topPaddingMed(),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _horizontalProductList(context, 'Yakınlardaki ilanlar'),
                _horizontalProductList(context, 'Eşya ilanları'),
                _horizontalProductList(context, 'Yemek ilanları'),
                _horizontalProductList(context, 'Giysi ilanları'),
                _horizontalProductList(context, 'Teknolojik aletler'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _horizontalProductList(BuildContext context, String title) {
    return Container(
      padding: const AppPaddings.verticalPaddingLow(),
      height: MediaQuery.sizeOf(context).height * 0.40,
      child: Column(
        children: [
          _HomeProductsTitle(title: title),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).height * 0.30,
                  child: InkWell(
                    onTap: () {},
                    child: const _HomeProductCard(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
