import 'package:flutter/material.dart';

class ColorsManager {
  // ====== Common (used in both modes) ======
  static const Color primaryGreen = Color(0xff075E54);
  static const Color tealGreen = Color(0xff128C7E);
  static const Color actionGreen = Color(0xff25D366);
  static const Color divider = Color(0xffd1d1d1);

  // ====== Light Mode ======
  static const Color lightBackground = Colors.white;
  static const Color lightBackgroundShade = Color(0xFFf6f5f3);
  static const Color lightChatBubbleSent = Color(0xffDCF8C6);
  static const Color lightChatBubbleReceived = Color(0xffFFFFFF);
  static const Color lightTextPrimary = Color(0xff6a6a6a);
  static const Color lightTextSecondary = Color(0xff909090);

  // ====== Dark Mode ======
  static const Color darkBackground = Color(0xff121B22);
  static const Color darkChatBubbleSent = Color(0xff005C4B);
  static const Color darkChatBubbleReceived = Color(0xff1F2C34);
  static const Color darkDivider = Color(0xff2C2C2C);
  static const Color darkTextPrimary = Color(0xffEDEDED);
  static const Color darkTextSecondary = Color(0xffB3B3B3);

  // ====== Utility Shades======
  static const Color warningRed = Color(0xffB01E1E);
  static const Color shimmerLoading = Color(0xffEDEDED); 
}
