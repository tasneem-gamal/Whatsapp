import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, 
    required this.icon, 
    required this.onPressed, 
    this.backgroundColor, 
    this.iconColor,
  });

  final IconData icon;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){}, 
      icon: Icon(icon, color: iconColor,),
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorsManager.lightBackgroundShade,
      ),
    );
  }
}