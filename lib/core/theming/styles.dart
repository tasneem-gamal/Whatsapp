
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/font_weight_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomTextStyles {
  // ==== AppBar Title ====
  static TextStyle appBarTitle(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 20.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 18.0),
          const Condition.largerThan(name: TABLET, value: 22.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.bold,
      color: theme.textTheme.headlineMedium?.color,
    );
  }

  // ==== Tabs (Chats, Updates, Calls) ====
  static TextStyle headTitles(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 18.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 16.0),
          const Condition.largerThan(name: TABLET, value: 24.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.bold,
      color: theme.textTheme.bodyMedium?.color,
    );
  }

  static TextStyle tabSelected(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 12.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 10.0),
          const Condition.largerThan(name: TABLET, value: 14.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.bold,
      color: theme.colorScheme.primary,
    );
  }

  static TextStyle tabUnselected(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 14.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 12.0),
          const Condition.largerThan(name: TABLET, value: 16.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.bold,
      color: theme.disabledColor,
    );
  }

  // ==== Large Head Titles ====
  static TextStyle largeHeadTitles(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 32.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 24.0),
          const Condition.largerThan(name: TABLET, value: 34.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.extraBold,
      color: theme.textTheme.headlineLarge?.color,
    );
  }

  static TextStyle blackHeadTitle(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 16.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 14.0),
          const Condition.largerThan(name: TABLET, value: 18.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.bold,
      color: theme.textTheme.headlineMedium?.color,
    );
  }

  // ==== Chat List ====
  static TextStyle chatTitle(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 16.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 14.0),
          const Condition.largerThan(name: TABLET, value: 18.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.extraBold,
      color: theme.textTheme.bodyLarge?.color,
    );
  }

  static TextStyle chatSubtitle(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 14.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 12.0),
          const Condition.largerThan(name: TABLET, value: 16.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.regular,
      color: theme.textTheme.bodyMedium?.color,
    );
  }

  static TextStyle chatTime(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 12.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 10.0),
          const Condition.largerThan(name: TABLET, value: 14.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.regular,
      color: theme.textTheme.bodyMedium?.color,
    );
  }

  // ==== Conversation Messages ====
  static TextStyle messageText(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 16.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 14.0),
          const Condition.largerThan(name: TABLET, value: 18.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.regular,
      color: theme.textTheme.bodySmall?.color,
    );
  }

  static TextStyle messageTime(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 14.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 12.0),
          const Condition.largerThan(name: TABLET, value: 16.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.regular,
      color: theme.textTheme.bodyMedium?.color,
    );
  }

  // ==== Status (Stories) ====
  static TextStyle statusText(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 14.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 12.0),
          const Condition.largerThan(name: TABLET, value: 16.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.medium,
      color: theme.textTheme.bodySmall?.color,
    );
  }

  // ==== Small Labels ====
  static TextStyle smallLabel(BuildContext context) {
    final theme = Theme.of(context);
    return TextStyle(
      fontSize: ResponsiveValue<double>(
        context,
        defaultValue: 14.0,
        conditionalValues: [
          const Condition.smallerThan(name: MOBILE, value: 10.0),
          const Condition.largerThan(name: TABLET, value: 14.0),
        ],
      ).value,
      fontWeight: FontWeightHelper.medium,
      color: theme.textTheme.bodyMedium?.color,
    );
  }
}
