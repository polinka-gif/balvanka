import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/style.dart';

class SmallProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String? oldPrice;
  final String imagePath;

  const SmallProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 130,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.borderLight, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SmallProductImage(imagePath: imagePath),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: AppStyles.bodyBold.copyWith(fontSize: 13),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: AppColors.textMain,
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: AppStyles.smallGrey.copyWith(fontSize: 11),
                ),
                const Spacer(),
                _SmallPriceBlock(price: price, oldPrice: oldPrice),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SmallProductImage extends StatelessWidget {
  final String imagePath;
  const _SmallProductImage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 79,
          height: 79,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.borderLight, width: 1),
          ),
          child: ClipOval(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(imagePath, fit: BoxFit.contain),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 35,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.badgePurple,
              borderRadius: BorderRadius.circular(6),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Хит',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: 72,
            height: 20,
            decoration: BoxDecoration(
              color: AppColors.badgeBlue,
              borderRadius: BorderRadius.circular(6),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Хит сезона',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 9,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmallPriceBlock extends StatelessWidget {
  final String price;
  final String? oldPrice;

  const _SmallPriceBlock({required this.price, this.oldPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 34,
      padding: const EdgeInsets.only(left: 8, right: 8),
      decoration: BoxDecoration(
        color: AppColors.bgLight,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (oldPrice != null)
                  Text(
                    oldPrice!,
                    style: AppStyles.priceOld.copyWith(fontSize: 10),
                  ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(price, style: AppStyles.price),
                ),
              ],
            ),
          ),
          const Icon(Icons.add, size: 14, color: AppColors.textMain),
        ],
      ),
    );
  }
}
