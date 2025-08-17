import 'package:flutter/cupertino.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/spacing.dart';

class ArchivedTitle extends StatelessWidget {
  const ArchivedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Icon(CupertinoIcons.archivebox, color: ColorsManager.darkTextSecondary,),
          horizontalSpace(context, 20),
          Text(
            'Archived',
            style: CustomTextStyles.headTitles(context),
          ),
          Spacer(),
          Text(
            '13',
            style: CustomTextStyles.smallLabel(context),
          ),
        ],
      ),
    );
  }
}
