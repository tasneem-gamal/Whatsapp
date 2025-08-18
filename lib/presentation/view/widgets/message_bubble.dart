import 'package:flutter/material.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String time;
  final bool isMe;

  const MessageBubble({
    super.key,
    required this.text,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: CustomPaint(
        painter: BubblePainter(
          isMe: isMe,
          color: isMe ? ColorsManager.messageBubbleColor : Colors.white,
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 280),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 4),
              Text(
                time,
                style: CustomTextStyles.messageTime(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class BubblePainter extends CustomPainter {
  final bool isMe;
  final Color color;

  BubblePainter({required this.isMe, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const r = 12.0; 
    const tailH = 12.0;
    const tailW = 8.0;
    const tailOffset = 14.0; 

    final path = Path();

    if (isMe) {
      path.moveTo(r, 0);
      path.lineTo(size.width - r, 0);
      path.quadraticBezierTo(size.width, 0, size.width, r);

      path.lineTo(size.width, size.height - tailOffset - tailH);

      path.quadraticBezierTo(
        size.width, size.height - tailOffset - tailH / 2,
        size.width + tailW, size.height - tailOffset,
      );
      path.quadraticBezierTo(
        size.width, size.height - tailOffset + tailH / 2,
        size.width, size.height - tailOffset + tailH,
      );

      path.lineTo(size.width, size.height - r);
      path.quadraticBezierTo(size.width, size.height, size.width - r, size.height);
      path.lineTo(r, size.height);
      path.quadraticBezierTo(0, size.height, 0, size.height - r);
      path.lineTo(0, r);
      path.quadraticBezierTo(0, 0, r, 0);
    } else {
      path.moveTo(r, 0);
      path.lineTo(size.width - r, 0);
      path.quadraticBezierTo(size.width, 0, size.width, r);
      path.lineTo(size.width, size.height - r);
      path.quadraticBezierTo(size.width, size.height, size.width - r, size.height);

      path.lineTo(r, size.height);
      path.quadraticBezierTo(0, size.height, 0, size.height - r);

      path.quadraticBezierTo(
        0, size.height - tailOffset + tailH / 2,
        -tailW, size.height - tailOffset,
      );
      path.quadraticBezierTo(
        0, size.height - tailOffset - tailH / 2,
        0, size.height - tailOffset - tailH,
      );

      path.lineTo(0, r);
      path.quadraticBezierTo(0, 0, r, 0);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
