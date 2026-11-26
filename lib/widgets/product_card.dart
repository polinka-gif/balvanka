import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/style.dart';
import '../screens/screen_order.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String? oldPrice;
  final String imagePath;
  final bool showTakeTogether;

  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    this.oldPrice,
    this.showTakeTogether = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductDetailScreen()),
        );
      },
      child: Container(
        width: 343,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          color: AppColors.white,
          border: Border(
            bottom: BorderSide(color: AppColors.borderLight, width: 1),
          ),
        ),
        child: Column(
          children: [
            _ProductDescription(
              title: title,
              subtitle: subtitle,
              price: price,
              oldPrice: oldPrice,
              imagePath: imagePath,
            ),
            if (showTakeTogether) ...[
              const SizedBox(height: 16),
              const _TakeTogetherBanner(),
            ],
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _ProductDescription extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String? oldPrice;
  final String imagePath;

  const _ProductDescription({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 114,
            height: 114,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.borderLight, width: 1),
            ),
            child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 17, right: 17),
                child: Image.asset(
                  imagePath,
                  width: 81,
                  height: 81,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 181,
                  height: 40,
                  child: Text(title, style: AppStyles.bodyBold),
                ),
                SizedBox(
                  width: 181,
                  height: 32,
                  child: Text(subtitle, style: AppStyles.smallGrey),
                ),
                const SizedBox(height: 12),
                _CounterAndPrice(price: price, oldPrice: oldPrice),
              ],
            ),
          ),
          const SizedBox(width: 4),
          const _ActionButtons(),
        ],
      ),
    );
  }
}

class _CounterAndPrice extends StatelessWidget {
  final String price;
  final String? oldPrice;

  const _CounterAndPrice({required this.price, this.oldPrice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 118,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: AppColors.bgLight,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.remove, size: 16, color: AppColors.textMain),
                Text('1', style: AppStyles.price),
                Icon(Icons.add, size: 16, color: AppColors.textMain),
              ],
            ),
          ),
          SizedBox(
            width: 62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (oldPrice != null)
                  Text(oldPrice!, style: AppStyles.priceOld),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(price, style: AppStyles.price),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  const _ActionButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.bgLight,
          ),
          child: const Icon(Icons.close, size: 12, color: AppColors.textMain),
        ),
        const SizedBox(height: 4),
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.infoRedBg,
          ),
          child: const Icon(
            Icons.info_outline,
            size: 16,
            color: AppColors.infoRed,
          ),
        ),
      ],
    );
  }
}

class _TakeTogetherBanner extends StatelessWidget {
  const _TakeTogetherBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 34,
      decoration: BoxDecoration(
        color: AppColors.primaryOrangeLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Берут вместе',
            style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.primaryOrange,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.chevron_right, size: 16, color: AppColors.primaryOrange),
        ],
      ),
    );
  }
}
