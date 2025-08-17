import 'package:go_router/go_router.dart';
import 'package:whatsapp/presentation/view/screens/chat_screen.dart';
import 'package:whatsapp/presentation/view/screens/home_screen.dart';
import 'package:whatsapp/presentation/view/screens/nav_screen.dart';

var router = GoRouter(routes: [
  StatefulShellRoute.indexedStack(branches: [
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
      builder: (context, state) => ChatScreen(),
    ),
], initialLocation: HomeScreen.path);