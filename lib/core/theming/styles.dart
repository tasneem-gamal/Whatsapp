
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/font_weight_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTextStyles {
  // ==== AppBar Title ====
  static TextStyle appBarTitle(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 20.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 18.0),
            const Condition.largerThan(name: TABLET, value: 22.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );

  // ==== Tabs (Chats, Updates, Calls) ====
  static TextStyle headTitles(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 18.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 16.0),
            const Condition.largerThan(name: TABLET, value: 24.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: ColorsManager.lightTextPrimary,
      );

  static TextStyle tabSelected(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 12.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: ColorsManager.primaryGreen,
      );

  static TextStyle tabUnselected(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Colors.grey,
      );
    
    static TextStyle largeHeadTitles(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 32.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 24.0),
            const Condition.largerThan(name: TABLET, value: 34.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.extraBold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );
    
    static TextStyle blackHeadTitle(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.bold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );

  // ==== Chat List ====
  static TextStyle chatTitle(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.extraBold,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );

  static TextStyle chatSubtitle(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.lightTextPrimary,
      );

  static TextStyle chatTime(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 12.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.lightBackgroundShade,
      );

  // ==== Conversation Messages ====
  static TextStyle messageText(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 16.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 14.0),
            const Condition.largerThan(name: TABLET, value: 18.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );

  static TextStyle messageTime(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.regular,
        color: ColorsManager.lightTextPrimary,
      );

  // ==== Status (Stories) ====
  static TextStyle statusText(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 12.0),
            const Condition.largerThan(name: TABLET, value: 16.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      );

  // ==== Small Labels ====
  static TextStyle smallLabel(BuildContext context) => TextStyle(
        fontSize: ResponsiveValue<double>(
          context,
          defaultValue: 14.0,
          conditionalValues: [
            const Condition.smallerThan(name: MOBILE, value: 10.0),
            const Condition.largerThan(name: TABLET, value: 14.0),
          ],
        ).value,
        fontWeight: FontWeightHelper.medium,
        color: ColorsManager.lightTextSecondary,
      );
}
