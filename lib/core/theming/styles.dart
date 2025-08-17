
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/font_weight_helper.dart';

class CustomTextStyles {
  static TextStyle font32WhiteBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 32.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 24.0),
            const Condition.largerThan(name: TABLET, value: 36.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.white,
      );

  static TextStyle font32BlackBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 32.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 24.0),
            const Condition.largerThan(name: TABLET, value: 36.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.black,
      );


  static TextStyle font24BlackBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 24.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 18.0),
            const Condition.largerThan(name: TABLET, value: 32.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.black,
      );

  static TextStyle font24WhiteMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 24.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 20.0),
            const Condition.largerThan(name: TABLET, value: 28.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white,
      );

  static TextStyle font18MainColorMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 18.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 16.0),
            const Condition.largerThan(name: TABLET, value: 22.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: ColorsManager.mainColor
      );

  static TextStyle font18WhiteMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 18.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 16.0),
            const Condition.largerThan(name: TABLET, value: 22.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white
      );

  static TextStyle font16LightGrayRegular(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.lightGray
      );

  static TextStyle font16BlackBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.black
      );

  static TextStyle font16LightGrayBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: ColorsManager.lightGray
      );

  static TextStyle font14MainColorRegular(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.mainColor
      );

  static TextStyle font14WhiteBold(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.white
      );

  static TextStyle font14Blackregular(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: Colors.black
      );

  static TextStyle font12BlackMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 12.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: Colors.black
      );

  static TextStyle font12MainColorMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 12.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: ColorsManager.mainColor
      );

  static TextStyle font12WhiteMedium(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 12.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white
      );
}
