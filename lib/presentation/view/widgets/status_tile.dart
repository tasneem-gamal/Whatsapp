import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/widgets/custom_icon_button.dart';

class StatusTile extends StatelessWidget {
  const StatusTile({
    super.key,
    required this.statusAvatar,
    required this.title,
    required this.subtitle,
    this.showDefaultTrailing = true,
    this.trailing,
  });

  final Widget statusAvatar;
  final String title, subtitle;
  final bool showDefaultTrailing;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: statusAvatar,
      title: Text(title, style: CustomTextStyles.blackHeadTitle(context)),
      subtitle: Text(subtitle, overflow: TextOverflow.ellipsis),
      trailing:
          trailing ??
          (showDefaultTrailing
              ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    icon: CupertinoIcons.camera,
                    onPressed: () {},
                  ),
                  CustomIconButton(
                    icon: CupertinoIcons.pencil,
                    onPressed: () {},
                  ),
                ],
              )
              : null),
    );
  }
}
