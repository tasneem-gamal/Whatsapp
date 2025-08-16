
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: ColorsManager.mainColor,
      ),
    );
  }
}