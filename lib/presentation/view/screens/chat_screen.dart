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
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<MessageModel> _messages = [];
  bool _isWriting = false;

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    final newMessage = MessageModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      senderId: "me",
      text: _controller.text.trim(),
      time: DateTime.now(),
      isMe: true,
    );

    _messages.add(newMessage);
    _listKey.currentState?.insertItem(
      _messages.length - 1,
      duration: const Duration(milliseconds: 300),
    );

    _controller.clear();
    setState(() => _isWriting = false);
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
              child: AnimatedList(
                key: _listKey,
                padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                initialItemCount: _messages.length,
                itemBuilder: (context, index, animation) {
                  final msg = _messages[index];
                  return ScaleTransition(
                    scale: Tween<double>(begin: 0.8, end: 1)
                        .animate(CurvedAnimation(
                      parent: animation,
                      curve: Curves.easeOutBack,
                    )),
                    child: FadeTransition(
                      opacity: animation,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: MessageBubble(
                          text: msg.text,
                          time: TimeOfDay.fromDateTime(msg.time).format(context),
                          isMe: msg.isMe,
                        ),
                      ),
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
