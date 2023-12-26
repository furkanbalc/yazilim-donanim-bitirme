import 'package:bende_fazla_final/product/constants/index.dart';
import 'package:bende_fazla_final/product/utility/index.dart';
import 'package:flutter/material.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.tune_outlined),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  backgroundColor: AppColors.purpleLight,
                ),
                onPressed: () {},
                label: const Text('Filtrele'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 0 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 0;
                  });
                },
                child: const Text('Hepsi'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 1 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 1;
                  });
                },
                child: const Text('Yakınlarda'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 2 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 2;
                  });
                },
                child: const Text('Yemek'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 3 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 3;
                  });
                },
                child: const Text('Eşya'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 4 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 4;
                  });
                },
                child: const Text('Giyim'),
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: select == 5 ? AppColors.purplePrimary : AppColors.greyPrimary),
                onPressed: () {
                  setState(() {
                    select = 5;
                  });
                },
                child: const Text('Teknoloji'),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
        Expanded(
          child: body(),
        ),
      ],
    );
  }

  Widget body() {
    switch (select) {
      case 0:
        return Padding(
          padding: const AppPaddings.allPaddingMed(),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return const _ProductCard();
            },
          ),
        );
      default:
        return const Center();
    }
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white54,
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            Expanded(flex: 1, child: ProductCardImage()),
            SizedBox(width: 25),
            Expanded(flex: 2, child: ProductCardBody()),
          ],
        ),
      ),
    );
  }
}

class ProductCardBody extends StatelessWidget {
  const ProductCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ilan başlık: ', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.blackPrimary)),
        Text('ürün kategori: ', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.greyPrimary)),
        Text('ürün durumu: ', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.greyPrimary)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: AppBorderRadius.circularAll() + AppBorderRadius.circularAll(),
                border: Border.all(),
              ),
              child: const Icon(
                AppIcons.kProfileIcon,
                size: 15,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'kullanıcı adı',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.greyPrimary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.star_rate_rounded,
              size: 20,
              color: Colors.orange.shade300,
            ),
            Text(
              'rated',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.greyPrimary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              size: 20,
              Icons.location_on_outlined,
              color: AppColors.greyPrimary,
            ),
            Text(
              'uzaklık',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.greyPrimary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(width: 20),
            const Icon(
              size: 20,
              Icons.visibility_outlined,
              color: AppColors.greyPrimary,
            ),
            Text(
              'views',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.greyPrimary,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(width: 10),
            Text(
              'Yeni',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        )
      ],
    );
  }
}

class ProductCardImage extends StatelessWidget {
  const ProductCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppBorderRadius.circularAll(),
      ),
      child: const ClipRRect(borderRadius: AppBorderRadius.circularOnlyTop(), child: Placeholder()),
    );
  }
}
