import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorsManager.divider,
      indent: 70,
    );
  }
}
