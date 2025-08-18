import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/data/models/message_model.dart';
import 'package:whatsapp/presentation/view/widgets/chat_app_bar.dart';
import 'package:whatsapp/presentation/view/widgets/chat_input_field.dart';
import 'package:whatsapp/presentation/view/widgets/message_bubble.dart';



class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  static const String path = '/chatScreen';

  final String name;
  final String imageUrl;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<MessageModel> _messages = [];
  bool _isWriting = false;

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _messages.add(
        MessageModel(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          senderId: "me", 
          text: _controller.text.trim(),
          time: DateTime.now(),
          isMe: true,
        ),
      );
      _controller.clear();
      _isWriting = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _messages.addAll([
      MessageModel(
        id: "1",
        senderId: "user1",
        text: "Hey, how are you?",
        time: DateTime.now().subtract(const Duration(minutes: 5)),
        isMe: false,
      ),
      MessageModel(
        id: "2",
        senderId: "me",
        text: "I'm good! How about you?",
        time: DateTime.now().subtract(const Duration(minutes: 4)),
        isMe: true,
      ),
      MessageModel(
        id: "3",
        senderId: "user1",
        text: "All good! Working on the project.",
        time: DateTime.now().subtract(const Duration(minutes: 2)),
        isMe: false,
      ),
    ]);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ChatAppBar(
        name: widget.name,
        imageUrl: widget.imageUrl,
        onBack: () => context.pop(),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wts_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: MessageBubble(
                      text: msg.text,
                      time: TimeOfDay.fromDateTime(msg.time).format(context),
                      isMe: msg.isMe,
                    ),
                  );
                },
              ),
            ),
            ChatInputField(
              controller: _controller,
              isWriting: _isWriting,
              onChanged: (val) =>
                  setState(() => _isWriting = val.trim().isNotEmpty),
              onSend: _sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
