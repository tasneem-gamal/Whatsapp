import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/spacing.dart';

class ChatFiltersList extends StatelessWidget {
  const ChatFiltersList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["All", "Unread", "Favorites", "Groups"];
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          itemCount: categories.length,
          separatorBuilder: (context, index) => horizontalSpace(context, 10),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: ColorsManager.lightBackgroundShade,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: CustomTextStyles.smallLabel(context),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
