import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:whatsapp/presentation/view/screens/chat_screen.dart';
import 'package:whatsapp/presentation/view/screens/home_screen.dart';
import 'package:whatsapp/presentation/view/screens/nav_screen.dart';
import 'package:whatsapp/presentation/view/screens/status_viewer_screen.dart';
import 'package:whatsapp/presentation/view/screens/updates_screen.dart';

var router = GoRouter(routes: [
  StatefulShellRoute.indexedStack(branches: [
    StatefulShellBranch(routes: [
      GoRoute(path: UpdatesScreen.path, builder: (context, state){
        return UpdatesScreen();
      })
    ]),
    StatefulShellBranch(routes: [
      GoRoute(path: HomeScreen.path, builder: (context, state){
        return HomeScreen();
      })
    ]),
    StatefulShellBranch(routes: [
      GoRoute(path: HomeScreen.path, builder: (context, state){
        return HomeScreen();
      })
    ]),
    StatefulShellBranch(routes: [
      GoRoute(path: HomeScreen.path, builder: (context, state){
        return HomeScreen();
      })
    ]),
  ], builder: (context, state, shell){
    return NavScreen(statefulNavigationShell: shell,);
  }),
  GoRoute(
      path: ChatScreen.path,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, String>;
        return CustomTransitionPage(
          key: state.pageKey,
          child: ChatScreen(name: extra["name"]!, imageUrl: extra["imageUrl"]!),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut),
              ),
              child: child,
            );
          },
        );
      },
    ),
  
  GoRoute(
      path: StatusViewerScreen.path,
      builder: (context, state) {
        final stories = state.extra as List<String>;
        return StatusViewerScreen(stories: stories);
      },
    )

], initialLocation: HomeScreen.path);