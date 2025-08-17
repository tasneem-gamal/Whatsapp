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
  
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.statefulNavigationShell,
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.black.withAlpha(100),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: ColorsManager.whiteShade,
          selectedLabelStyle: CustomTextStyles.font12WhiteMedium(context),
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.camera_circle),
              label: 'Updates'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              label: 'Call'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.group),
              label: 'Communities'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2),
              label: 'Chats'
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Settings'
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index ;
            });
          },
        ),
      ),
    );
  }
}