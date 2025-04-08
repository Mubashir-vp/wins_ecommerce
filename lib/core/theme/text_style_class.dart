import 'package:flutter/material.dart';

import 'color_class.dart';


class TextStyleClass {
  static const fontFamily = "Mulish";
  static const textFieldStyle = TextStyle(
      fontSize: 15,
      fontFamily: TextStyleClass.fontFamily,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w600);
  static const hintTextStyle = TextStyle(
      fontFamily: TextStyleClass.fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorsClass.darkHint);

  static const labelTextStyle = TextStyle(
    fontFamily: TextStyleClass.fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsClass.darkHint,
  );

  ///SIZE 8
  static const TextStyle mulishGrayLineThrgh8 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 8,
      color: ColorsClass.primaryColor,
      decoration: TextDecoration.lineThrough,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5);
  static const TextStyle mulishGray8 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 8,
      color: ColorsClass.darkGray,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5);

  ///SIZE 9
  static const TextStyle mulishGray9 = TextStyle(
      fontFamily: fontFamily, fontSize: 9, color: ColorsClass.primaryColor);

  static const TextStyle mulishGrayMedium9 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 9,
      color: ColorsClass.primaryColor,
      fontWeight: FontWeight.w500);
  static const TextStyle mulishGrayMedium12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.gray,
      fontWeight: FontWeight.w500);

  static const TextStyle mulishBoldPrimary9 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 9,
      color: ColorsClass.primaryColor,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);

  ///SIZE 11

  static const TextStyle mulishThinRed11 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 11,
      color: ColorsClass.orangeRose,
      fontWeight: FontWeight.w400);

  ///SIZE 12

  static const TextStyle mulishGrey12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.darkGray,
      fontWeight: FontWeight.w500);

  static const TextStyle mulishGreyThin12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.subTextColor,
      fontWeight: FontWeight.w300);

  static const TextStyle mulishMediumBlack12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w500);

  static const TextStyle mulishSemiBoldBlack12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w800);

  ///SIZE 14

  static const TextStyle mulishRegular14 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    color: ColorsClass.textColor,
  );
  static const TextStyle mulishRegular13 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    color: ColorsClass.blackColor,
  );  static const TextStyle mulishRegular12 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: ColorsClass.blackColor,
  );
  static const TextStyle mulishRegular12White = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: ColorsClass.white,
  );
  static const TextStyle mulishRegular12Gray = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    color: ColorsClass.labelGray,
  );static const TextStyle mulishRegular11Gray = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    color: ColorsClass.labelGray,
  );
  static const TextStyle mulishRegular10 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    color: ColorsClass.textColor,
  );
  static const TextStyle mulishRegular14White = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: ColorsClass.white,
  );

  static const TextStyle mulishRegular14Grey = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    // fontWeight: FontWeight.bold,
    color: ColorsClass.darkGray,
  );
  static const TextStyle mulishBoldBlack14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: ColorsClass.textColor);
  static const TextStyle mulishBoldBlack12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: ColorsClass.textColor);

  static const TextStyle mulishBoldGray14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: ColorsClass.gray);
  static const TextStyle mulishBold12 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w700,
      );
  static const TextStyle mulishSemiBoldBlack14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorsClass.textColor);

  static const TextStyle mulishPrimarySemiBold14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      color: ColorsClass.primaryColor,
      fontWeight: FontWeight.w500);

  static const TextStyle mulishSemiBoldWhite14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: ColorsClass.white);

  static const TextStyle mulishSemiBold14Green = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsClass.green,
  );

  static const TextStyle mulishSemiBold14Red = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsClass.redColor,
  );

  static const TextStyle mulishSemiBold14Orange = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.deepOrange,
  );

  static const TextStyle mulishSemiBold14yellow = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsClass.yellowColor,
  );

  static const TextStyle mulishSemiBold14Grey = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorsClass.darkGray,
  );

  static const TextStyle mulishSemiThinBlack14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: ColorsClass.textColor);
  static const TextStyle mulishSemiBlack14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ColorsClass.textColor);
  static const TextStyle mulishGrey14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsClass.textColor);
  static const TextStyle mulishGreen14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.green);
  static const TextStyle mulishGreyThin14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorsClass.textColor);

  static const TextStyle mulishBoldPrimary14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      color: ColorsClass.primaryColor,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);
  static const TextStyle mulishThin14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      color: ColorsClass.subTextColor,
      fontWeight: FontWeight.w400);

  static const TextStyle mulishWhite14 =
      TextStyle(fontFamily: fontFamily, fontSize: 14, color: ColorsClass.white);

  static const TextStyle mulishBlack14 = TextStyle(
      fontFamily: fontFamily, fontSize: 14, color: ColorsClass.textColor);
  static const TextStyle mulishBlack13 = TextStyle(
      fontFamily: fontFamily, fontSize: 13, color: ColorsClass.textColor);

  static const TextStyle mulishMediumBlack14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorsClass.textColor);

  static const TextStyle mulishMediumWhite14 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: ColorsClass.white);

  static const TextStyle mulishBold14Green = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ColorsClass.green,
  );

  static const TextStyle mulishBold14Red = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: ColorsClass.redColor,
  );

  static const TextStyle mulishBold14Orange = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: Colors.deepOrange,
  );

  ///SIZE 16

  static const TextStyle mulishRegular16 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    color: ColorsClass.textColor,
  );

  static const TextStyle mulishWhiteRegular16 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    color: ColorsClass.white,
  );

  static const TextStyle mulishWhite16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      color: ColorsClass.white,
      fontWeight: FontWeight.w500);

  static const TextStyle mulishGrey16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorsClass.textColor);

  static const TextStyle mulishBoldBlacks16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: ColorsClass.textColor);

  static const TextStyle mulishBoldPrimary16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      color: ColorsClass.primaryColor,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);

  static const TextStyle mulishBoldGrey16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      color: ColorsClass.gray,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);

  static const TextStyle mulishBlack16 = TextStyle(
      fontFamily: fontFamily, fontSize: 16, color: ColorsClass.textColor);

  static const TextStyle mulishBoldsBlack16 = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontSize: 16,
    color: ColorsClass.textColor,
  );
  static const TextStyle mulishSubColorRegular14 = TextStyle(
      fontFamily: fontFamily, fontSize: 14, color: ColorsClass.textColor1);
  static const TextStyle mulishBoldBlack16 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.bold);

  static const TextStyle orangeRegular16 = TextStyle(
    color: ColorsClass.primaryColor,
    fontSize: 16,
    fontFamily: fontFamily,
  );

  ///SIZE 18
  static const TextStyle mulishPrimary18 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      color: ColorsClass.primaryColor,
      fontWeight: FontWeight.w500);
  static const TextStyle mulishWhite18 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      color: ColorsClass.white,
      fontWeight: FontWeight.w500);
  static const TextStyle mulishBoldBlack17 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w700);
  static const TextStyle mulishBoldBlack18 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.w700);
  static const TextStyle mulishBoldPrimary18 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      color: ColorsClass.primaryColor,
      fontWeight: FontWeight.w700);

  static const TextStyle mulishBlack18 = TextStyle(
      fontFamily: fontFamily, fontSize: 18, color: ColorsClass.textColor);

  ///SIZE 20
  static const TextStyle mulishBlack20 = TextStyle(
      fontFamily: fontFamily, fontSize: 20, color: ColorsClass.textColor);
  static const TextStyle mulishBoldBlack20 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: ColorsClass.textColor);
  static const TextStyle mulishSemiBoldBlack20 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: ColorsClass.textColor);

  static const TextStyle mulishBoldPrimary20 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      color: ColorsClass.primaryColor,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);

  ////SIZE 25
  static const TextStyle boldBlack22 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.w800,
      color: ColorsClass.textColor);
  static const TextStyle mulishSemiBoldGreen40 = TextStyle(
      fontFamily: fontFamily,
      fontSize: 40,
      fontWeight: FontWeight.w600,
      color: Colors.green);
  static TextStyle autoSizeWhiteBold(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: ColorsClass.white);
  //auto size white w600
  static TextStyle autoSizeWhiteW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: ColorsClass.white);

  //auto size white w600
  static TextStyle autoSizeTextW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: ColorsClass.textColor);
  static TextStyle autoSizeTextW400(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: ColorsClass.textColor);
  static TextStyle autoSizeTextW400Gray(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: ColorsClass.blueGrey);
  static TextStyle autoSizeBlackW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: ColorsClass.blackColor);

  static TextStyle autoPrimaryColorW700(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.primaryColor,
      textBaseline: TextBaseline.alphabetic,
      wordSpacing: 1,
      fontWeight: FontWeight.w700);

  static TextStyle autoBlackBold(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.textColor,
      fontWeight: FontWeight.bold);
  static TextStyle autoBlackMainBold(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.blackColor,
      fontWeight: FontWeight.bold);
  static TextStyle autoGrayBold(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.gray,
      fontWeight: FontWeight.bold);
  static TextStyle autoGrayW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.gray,
      fontWeight: FontWeight.w600);

  static TextStyle autoYellowW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.yellowColor,
      fontWeight: FontWeight.w600);

  static TextStyle autoRedW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      color: ColorsClass.redColor,
      fontWeight: FontWeight.w600);
  static TextStyle autoGreenW600(double size) => TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: FontWeight.w600,
      color: ColorsClass.green);
}
