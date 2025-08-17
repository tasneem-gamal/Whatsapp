import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/presentation/view/widgets/chat_app_bar.dart';
import 'package:whatsapp/presentation/view/widgets/chat_input_field.dart';
import 'package:whatsapp/presentation/view/widgets/message_bubble.dart';



class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  static const String path = '/chatScreen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];
  bool _isWriting = false;

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _messages.add({
        "text": _controller.text.trim(),
        "isMe": true,
        "time": TimeOfDay.now().format(context),
      });
      _controller.clear();
      _isWriting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: ChatAppBar(
        name: 'Ali', 
        imageUrl: 'https://tse1.mm.bing.net/th/id/OIP.GKAbRpYzDlJa139WC8xPtwHaIC?pid=Api&P=0&h=220', 
        onBack: (){
          context.pop();
        }
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wts_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(12),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  return MessageBubble(
                    text: msg["text"],
                    time: msg["time"],
                    isMe: msg["isMe"],
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
