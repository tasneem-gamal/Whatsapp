import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/styles.dart';
import 'package:whatsapp/core/utils/spacing.dart';
import 'package:whatsapp/core/widgets/custom_divider.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key, 
  required this.image, 
  required this.chatTitle, 
  required this.chatSubtitle, 
  required this.time
  });

  final String image, chatTitle, chatSubtitle, time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(image),
              ),
              horizontalSpace(context, 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chatTitle,
                      style: CustomTextStyles.chatTitle(context),
                    ),
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
              Text(
                time,
                style: CustomTextStyles.messageTime(context),
              )
            ],
          ),
        ),
        CustomDivider()
      ],
    );
  }
}

