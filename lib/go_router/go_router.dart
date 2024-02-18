import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app_json/screens/user_list.dart';
import 'package:app_json/screens/detalles_user.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => UserListScreen(),
      ),
     GoRoute(
        path: '/user/:userId',
        builder: (context, state) {
          final userId = state.params['userId'];
          return UserDetailsScreen(user: userId);
        },
      ),
    ],
  );
}
