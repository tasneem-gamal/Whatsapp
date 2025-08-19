import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key, this.indent,
  });

  final double? indent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorsManager.divider,
      indent: indent ?? 70,
    );
  }
}
