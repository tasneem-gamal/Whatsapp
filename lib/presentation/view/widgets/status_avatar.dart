import 'package:flutter/material.dart';
import 'dart:math';

import 'package:whatsapp/core/theming/colors.dart';

class StatusAvatar extends StatelessWidget {
  final String imageUrl;
  final int storiesCount;
  final bool isAdd;

  const StatusAvatar({
    super.key,
    required this.imageUrl,
    this.storiesCount = 0,
    this.isAdd = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: Stack(
        children: [
          CustomPaint(
            painter: storiesCount > 0
                ? StatusBorderPainter(storiesCount)
                : null,
            child: Padding(
              padding: const EdgeInsets.all(4), 
              child: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          if (isAdd)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.primaryGreen,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(
                  Icons.add,
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class StatusBorderPainter extends CustomPainter {
  final int segments;
  StatusBorderPainter(this.segments);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = ColorsManager.primaryGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;

    final Rect rect = Offset.zero & size;
    final double startAngle = -pi / 2;

    if (segments == 1) {
      canvas.drawArc(
        rect.deflate(2),
        0,
        2 * pi,
        false,
        paint,
      );
    } else {
      final double sweep = (2 * pi) / segments;
      const double gap = 0.2;

      for (int i = 0; i < segments; i++) {
        canvas.drawArc(
          rect.deflate(2),
          startAngle + (i * sweep),
          sweep - gap,
          false,
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

