import 'package:flutter/material.dart';
import 'color.dart';

class AppStyles {
  static const String fontFamily = 'Inter';
  static const TextStyle h1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColors.textMain,
  );
  static const TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: AppColors.textMain,
  );
  static const TextStyle h3 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w900,
    fontSize: 20,
    color: AppColors.textMain,
    height: 1.2,
  );
  static const TextStyle bodyBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.textMain,
  );
  static const TextStyle bodyRegular = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.textMain,
  );
  static const TextStyle smallGrey = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.textGrey,
  );
  static const TextStyle price = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w900,
    fontSize: 14,
    color: AppColors.textMain,
  );
  static const TextStyle priceOld = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    color: AppColors.textLight,
    decoration: TextDecoration.lineThrough,
  );
}