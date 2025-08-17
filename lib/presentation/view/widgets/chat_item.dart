import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/core/widgets/custom_divider.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.image,
    required this.chatTitle,
    required this.chatSubtitle,
    required this.time, required this.onTap,
  });

  final String image, chatTitle, chatSubtitle, time;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: image.isNotEmpty ? NetworkImage(image) : null,
                  child:
                    image.isEmpty
                      ? const Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.white,
                      )
                      : null,
                ),
                horizontalSpace(context, 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(chatTitle, style: CustomTextStyles.chatTitle(context)),
                      verticalSpace(context, 5),
                      Text(
                        chatSubtitle,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.chatSubtitle(context),
                      ),
                    ],
                  ),
                ),
                horizontalSpace(context, 5),
                Text(time, style: CustomTextStyles.messageTime(context)),
              ],
            ),
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}
