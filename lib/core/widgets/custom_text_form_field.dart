
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, 
    this.suffixIcon, 
    this.prefixIcon, 
    this.isObsecureText, 
    this.controller, 
    required this.validator, 
    this.onChanged, 
    required this.hintText,
    this.keyboardType,
    this.maxLines,
    this.readOnly = false,
    this.onTap,
    this.onFieldSubmitted
  });
  
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? isObsecureText;
  final String hintText;
  final TextEditingController? controller;
  final Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final borderColor = isDark ? Colors.transparent : ColorsManager.lightBackgroundShade;
    final fillColor = isDark ? ColorsManager.darkTextSecondary : ColorsManager.lightBackgroundShade;
    final hintColor = isDark ? Colors.white70 : ColorsManager.lightTextSecondary;

    final int effectiveMaxLines = (isObsecureText == true) ? 1 : (maxLines ?? 1);

    return SizedBox(
      height: 40,
      child: TextFormField(
        onTap: onTap,
        keyboardType: keyboardType,
        maxLines: effectiveMaxLines,
        controller: controller,
        validator: validator != null ? (value) => validator!(value) : null,
        onChanged: onChanged,
        obscureText: isObsecureText ?? false,
        readOnly: readOnly,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: borderColor)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: borderColor)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.red)),
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: CustomTextStyles.messageText(context).copyWith(color: hintColor),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10), 
          prefixIcon: prefixIcon,
          prefixIconColor: hintColor,
          suffixIcon: suffixIcon,
          suffixIconColor: borderColor,
        ),
      ),
    );
  }
}
