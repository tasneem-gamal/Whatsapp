import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.indent,
  });

  final double? indent;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Divider(
      color: isDark ? ColorsManager.darkDivider : ColorsManager.divider,
      indent: indent ?? 70,
    );
  }
}
