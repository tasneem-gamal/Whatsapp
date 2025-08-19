import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, 
    required this.icon, 
    required this.onPressed, 
    this.backgroundColor, 
    this.iconColor, 
    this.iconSize,
  });

  final IconData icon;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final bgColor = backgroundColor ?? (isDark ? Colors.transparent: ColorsManager.lightBackgroundShade);
    final icColor = iconColor ?? (isDark ? Colors.white : Colors.black);

    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon, color: icColor, size: iconSize,),
      style: IconButton.styleFrom(
        backgroundColor: bgColor,
      ),
    );
  }
}
