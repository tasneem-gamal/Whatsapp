import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';

class ChatInputField extends StatelessWidget {
  final TextEditingController controller;
  final bool isWriting;
  final ValueChanged<String> onChanged;
  final VoidCallback onSend;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.isWriting,
    required this.onChanged,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.emoji_emotions_outlined,
                  color: ColorsManager.lightTextPrimary)),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: "Type a message",
                border: InputBorder.none,
              ),
              onChanged: onChanged,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.attach_file,
                  color: ColorsManager.lightTextPrimary)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt,
                  color: ColorsManager.lightTextPrimary)),
          GestureDetector(
            onTap: isWriting ? onSend : () {},
            child: CircleAvatar(
              backgroundColor: ColorsManager.primaryGreen,
              child: Icon(
                isWriting ? Icons.send : Icons.mic,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}