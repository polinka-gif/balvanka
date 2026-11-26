import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/style.dart';
import '../utils/png.dart';
import '../widgets/product_card.dart';
import '../widgets/small_product_card.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.only(left: 16, top: 22),
            decoration: const BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  offset: Offset(0, 5),
                  blurRadius: 16,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Корзина', style: AppStyles.h2),
                const SizedBox(height: 4),
                Text(
                  '4 товара',
                  style: AppStyles.bodyRegular.copyWith(
                    color: AppColors.textLight,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              children: [
                const ProductCard(
                  title: 'Med Expert Бинт эластичный',
                  subtitle: '5м х 10см инд.упк',
                  price: '375 ₽',
                  oldPrice: '480',
                  imagePath: AppImages.bint,
                  showTakeTogether: true,
                ),
                const ProductCard(
                  title: 'Зотт',
                  subtitle: '20 мг+10мг №30 табл. д/рассас.',
                  price: '567 ₽',
                  imagePath: AppImages.zott,
                ),
                const ProductCard(
                  title: 'Максиколд рино порошок',
                  subtitle:
                      'для приготовления раствора д/вн.прим. 15г №5 малина',
                  price: '250 ₽',
                  oldPrice: '300',
                  imagePath: AppImages.maxicold,
                ),
                const ProductCard(
                  title: 'Ducray Anaphase',
                  subtitle: 'шампунь для ухода за ослабленными волосами 400мл',
                  price: '767 ₽',
                  oldPrice: '1200',
                  imagePath: AppImages.ducray,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
                  child: Text('Пополните аптечку', style: AppStyles.h1),
                ),
                SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: const [
                      SmallProductCard(
                        title: 'Терафлю лесные ягоды',
                        subtitle: 'раствор внутрь 11,5г №10',
                        price: '300 ₽',
                        oldPrice: '502',
                        imagePath: AppImages.teraflu,
                      ),
                      SizedBox(width: 12),
                      SmallProductCard(
                        title: 'Лизобакт',
                        subtitle: 'для рассасывания №30',
                        price: '400 ₽',
                        imagePath: AppImages.lizobakt,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
