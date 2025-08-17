import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/spacing.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final String imageUrl;
  final VoidCallback onBack;

  const ChatAppBar({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 70,
      leading: IconButton(
        onPressed: onBack,
        icon: Icon(CupertinoIcons.back, color: Colors.black),
      ),
      title: Row(
        children: [
          CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
          horizontalSpace(context, 8),
          Text(
            name,
            style: CustomTextStyles.headTitles(context),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(CupertinoIcons.video_camera,
              color: ColorsManager.lightTextPrimary, size: 32),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(CupertinoIcons.phone, color: ColorsManager.lightTextPrimary)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}