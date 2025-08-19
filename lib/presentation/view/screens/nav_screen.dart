import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/core/theming/colors.dart';
import 'package:whatsapp/core/theming/styles.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key, required this.statefulNavigationShell});
  static const String path = '/navScreen';
  final StatefulNavigationShell statefulNavigationShell;

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: widget.statefulNavigationShell,
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: isDark ? ColorsManager.darkBackground : ColorsManager.lightBackground,
          border: Border(top: BorderSide(
            color: isDark ? ColorsManager.darkDivider : ColorsManager.divider
          )),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: isDark ? Colors.white : Colors.black,
          unselectedItemColor: isDark ? Colors.white54 : ColorsManager.lightTextSecondary,
          selectedLabelStyle: CustomTextStyles.tabSelected(context),
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera_circle),
              activeIcon: Icon(CupertinoIcons.camera_circle_fill),
              label: 'Updates'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              activeIcon: Icon(CupertinoIcons.phone_fill),
              label: 'Call'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2),
              activeIcon: Icon(CupertinoIcons.chat_bubble_2_fill),
              label: 'Chats'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              activeIcon: Icon(CupertinoIcons.settings_solid),
              label: 'Settings'
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
            widget.statefulNavigationShell.goBranch(index);
          },
        ),
      ),
    );
  }
}
