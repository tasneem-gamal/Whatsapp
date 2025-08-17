

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/widgets/custom_icon_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 100,
      pinned: true,
      title: Row(
        children: [
          CustomIconButton(
            onPressed: (){},
            icon: CupertinoIcons.ellipsis,
          ),
          Spacer(),
          CustomIconButton(
            onPressed: (){},
            icon: CupertinoIcons.camera,
          ),
          CustomIconButton(
            onPressed: (){},
            icon: CupertinoIcons.add,
            backgroundColor: ColorsManager.actionGreen,
            iconColor: Colors.white,
          ),
        ],
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
        child: Text(
          'Chats',
          style: CustomTextStyles.largeHeadTitles(context),
        ),
      ),
    );
  }
}

