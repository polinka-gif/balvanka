import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/style.dart';
import '../utils/png.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderLight),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.bgLight,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(AppImages.bint, fit: BoxFit.contain),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.badgePurple,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Хит',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Med Expert Бинт эластичный компр...',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textMain,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                const Text(
                  '5м х 10см инд.упк',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 9,
                    color: AppColors.textLight,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '146 ₽',
                          style: AppStyles.price.copyWith(fontSize: 12),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                            color: AppColors.borderLight,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            '-10%',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 8,
                              color: AppColors.textMain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.add, size: 14, color: AppColors.textMain),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
