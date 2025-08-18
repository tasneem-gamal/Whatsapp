

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/helpers.dart';
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/core/widgets/custom_icon_button.dart';


class CustomSliverAppBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  const CustomSliverAppBar({super.key, required this.title, this.actions});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: Helpers.getAppBarHeight(context),
      pinned: true,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () {},
                    icon: CupertinoIcons.ellipsis,
                  ),
                  const Spacer(),
                  if (actions != null) ...actions!,
                ],
              ),
              verticalSpace(context, Helpers.getAppBarSpacing(context)),
              Text(title, style: CustomTextStyles.largeHeadTitles(context)),
            ],
          ),
        ),
      ),
    );
  }
}
