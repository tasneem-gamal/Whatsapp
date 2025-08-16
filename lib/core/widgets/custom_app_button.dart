
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({super.key, 
  required this.btnText, 
  this.onPressed, 
  this.borderRadius, 
  this.backgroundColor, 
  this.txtColor,  this.textStyle, this.buttonWidth, this.buttonHeight});

  final String btnText;
  final void Function()? onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? txtColor;
  final TextStyle? textStyle;
  final double? buttonWidth;
  final double? buttonHeight;
  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null;
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight ?? 60,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isDisabled ? ColorsManager.lightGray : backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          padding: const EdgeInsets.all(16),
        ),
        child: Text(btnText, style: textStyle ?? CustomTextStyles.font16BlackBold(context).copyWith(color: Colors.white)),
      ),
    );
  }
}
