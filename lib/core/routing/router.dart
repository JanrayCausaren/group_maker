import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:group_maker/core/routing/routes.dart';
import 'package:group_maker/features/directories/directories_screen.dart';
import 'package:group_maker/features/directories/home_screen.dart';
import 'package:group_maker/features/directories/main_layout.dart';
import 'package:group_maker/features/groups/groups_screen.dart';
import 'package:group_maker/features/profile/presentation/profile_screen.dart';

final router = GoRouter(
  initialLocation: AppRoutes.home,
  debugLogDiagnostics: true,
  navigatorKey: GlobalKey<NavigatorState>(),
  redirect: (context, state) {
    // Implement your redirection logic here
    return null; // Return the new location or null to stay on the current page
  },
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainLayout(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.directories,
              builder: (context, state) => const DirectoriesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.segments,
              builder: (context, state) => const GroupsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
