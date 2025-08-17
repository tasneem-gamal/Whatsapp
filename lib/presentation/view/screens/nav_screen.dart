import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key, required this.statefulNavigationShell});
  static const String path = '/navScreen';
  final StatefulNavigationShell statefulNavigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statefulNavigationShell,
    );
  }
}