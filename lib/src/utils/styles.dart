import 'package:flutter/material.dart';
import 'package:school_management/src/utils/color.dart';
import 'package:school_management/src/utils/values.dart';

class AppStyle {
  AppStyle._();
  //DEFAULT STYLE
  static const DEFAULT_VERY_SMALL = TextStyle(
      fontFamily: 'Inter',
      fontSize: AppValue.FONT_SIZE_10,
      color: AppColors.black,
      height: 1.4);
  /////////////////////////////////////////////////////////////////////////////
  static const heading_1 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_24,fontWeight: FontWeight.w700, color: AppColors.black, height: 1.5);

  static const heading_2 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_24, fontWeight: FontWeight.w500, color: AppColors.black, height: 1.5);

  static const title_1 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_20, fontWeight: FontWeight.w600, color:AppColors.black, height: 1.5);

  static const title_2 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_18, fontWeight: FontWeight.w600, color: AppColors.black, height: 1.5);

  static const subtitle_1 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_16, fontWeight: FontWeight.w600, color: AppColors.black, height: 1.5);

  static const subtitle_2 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_16, fontWeight: FontWeight.w500, color: AppColors.black, height: 1.5);

  static const subtitle_3 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_14, fontWeight: FontWeight.w600, color: AppColors.black, height: 1.5);

  static const body_1 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_14, fontWeight: FontWeight.w400, color: AppColors.black, height: 1.5);

  static const body_2 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_14, fontWeight: FontWeight.w600, color: AppColors.black, height: 1.5);

  static const caption_1 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_12, fontWeight: FontWeight.w400, color: AppColors.black, height: 1.5);

  static const caption_2 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_12, fontWeight: FontWeight.w500, color: AppColors.black, height: 1.5);

  static const caption_3 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_10, fontWeight: FontWeight.w500, color: AppColors.black, height: 1.5);


  /////////////////////////////////////////////////////////////////////////////
  static const DEFAULT_12 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_12, color: AppColors.black, height: 1.4);

  static const DEFAULT_14 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_14, color: AppColors.black, height: 1.4);

  static const DEFAULT_16 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_16, color:AppColors.black, height: 1.4);
  
  static const DEFAULT_18 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_18, color: AppColors.black, height: 1.4);

  static const DEFAULT_MEDIUM_LINK = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_16, color: AppColors.black, height: 1.4, decoration: TextDecoration.underline);

  static const DEFAULT_20 = TextStyle(
      fontFamily: 'Inter',fontSize: AppValue.FONT_SIZE_20, color: AppColors.black, height: 1.4);

  static const DEFAULT_24 = TextStyle(
      fontFamily: 'Inter', fontSize: AppValue.FONT_SIZE_24,
      color: AppColors.black,
      height: 1.4);

  static const APP_MEDIUM = TextStyle(
      fontSize: AppValue.FONT_SIZE_16,
      color:AppColors.primaryColor,
      height: 1.4);

  //DEFAULT STYLE MIX
  // ignore: non_constant_identifier_names
  static final DEFAULT_12_BOLD =
  DEFAULT_12.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final DEFAULT_14_BOLD =
  DEFAULT_14.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final DEFAULT_16_BOLD =
  DEFAULT_16.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final DEFAULT_18_BOLD =
  DEFAULT_18.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final DEFAULT_20_BOLD =
  DEFAULT_20.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final DEFAULT_24_BOLD =
  DEFAULT_24.copyWith(fontWeight: FontWeight.bold);
  // ignore: non_constant_identifier_names
  static final RED_HINT_SMALL = DEFAULT_12.copyWith(color: Colors.red);
  // ignore: non_constant_identifier_names
  static final PRODUCT_PRICE = DEFAULT_VERY_SMALL.copyWith(
      height: 1.4,
      color: AppColors.grey,
      decoration: TextDecoration.lineThrough);
  // ignore: non_constant_identifier_names
  static final PRODUCT_SALE_PRICE = DEFAULT_12.copyWith(
    height: 1.4,
    color: Color(0xFF960909),
  );
  // ignore: non_constant_identifier_names
  static final PRODUCT_PRICE_DETAIL = DEFAULT_16.copyWith(
      color: AppColors.grey, decoration: TextDecoration.lineThrough);
  // ignore: non_constant_identifier_names
  static final PRODUCT_SALE_PRICE_DETAIL = DEFAULT_16.copyWith(
    color: Color(0xFF960909),
  );
}

