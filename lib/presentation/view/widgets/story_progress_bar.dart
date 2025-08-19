import 'package:flutter/material.dart';
import 'package:whatsapp/presentation/view/screens/status_viewer_screen.dart';

class StoryProgressBar extends StatelessWidget {
  const StoryProgressBar({
    super.key,
    required this.widget,
    required this.currentIndex,
  });

  final StatusViewerScreen widget;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top + 16,
      left: 16,
      right: 16,
      child: Row(
        children: widget.stories.asMap().entries.map((entry) {
          int idx = entry.key;
          return Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              height: 2,
              decoration: BoxDecoration(
                color: idx <= currentIndex ? Colors.white : Colors.white54,
                borderRadius: BorderRadius.circular(1),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
