import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home_page/presentation/pages/home_page.dart';

class Routes {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final homeTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'homeTabNavigatorKey');
  static final profileTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'profileTabNavigatorKey');
  static final uploadTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'uploadTabNavigatorKey');
  static final userManagerTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'userManagerTabNavigatorKey');

  static final routes = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        // GoRoute(
        //     path: '/upload-video',
        //     name: '/upload-video',
        //     pageBuilder: (BuildContext context, GoRouterState state) {
        //       return CustomTransitionPage(
        //         key: state.pageKey,
        //         transitionDuration: Duration.zero,
        //         transitionsBuilder:
        //             (context, animation, secondaryAnimation, child) => child,
        //         child: const NewContentFormWidget(),
        //       );
        //     }),
        GoRoute(
            path: '/',
            name: '/',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                transitionDuration: Duration.zero,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) => child,
                child: const HomePage(),
              );
            }),
        // StatefulShellRoute.indexedStack(
        //   builder: (context, state, navigationShell) {
        //     return BottomNavigationBarPage(navigationShell: navigationShell);
        //   },
        //   parentNavigatorKey: parentNavigatorKey,
        //   branches: [
        //     StatefulShellBranch(
        //       navigatorKey: homeTabNavigatorKey,
        //       routes: [
        //         GoRoute(
        //           path: DashboardPage.dashboardPageName,
        //           name: DashboardPage.dashboardPageName,
        //           pageBuilder: (context, state) {
        //             return CustomTransitionPage(
        //               key: state.pageKey,
        //               transitionDuration: Duration.zero,
        //               transitionsBuilder:
        //                   (context, animation, secondaryAnimation, child) =>
        //               child,
        //               child: const DashboardPage(),
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //     StatefulShellBranch(
        //       navigatorKey: uploadTabNavigatorKey,
        //       routes: [
        //         GoRoute(
        //           path: ContentManagementPage.uploadPageName,
        //           name: ContentManagementPage.uploadPageName,
        //           pageBuilder: (context, state) {
        //             return CustomTransitionPage(
        //               key: state.pageKey,
        //               transitionDuration: Duration.zero,
        //               transitionsBuilder:
        //                   (context, animation, secondaryAnimation, child) =>
        //               child,
        //               child: const ContentManagementPage(),
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //     StatefulShellBranch(
        //       navigatorKey: userManagerTabNavigatorKey,
        //       routes: [
        //         GoRoute(
        //           path: UserManagerPage.userManagerPageName,
        //           name: UserManagerPage.userManagerPageName,
        //           pageBuilder: (context, state) {
        //             return CustomTransitionPage(
        //               key: state.pageKey,
        //               transitionDuration: Duration.zero,
        //               transitionsBuilder:
        //                   (context, animation, secondaryAnimation, child) =>
        //               child,
        //               child: const UserManagerPage(),
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //     StatefulShellBranch(
        //       navigatorKey: profileTabNavigatorKey,
        //       routes: [
        //         GoRoute(
        //           path: ProfilePage.profilePageName,
        //           name: ProfilePage.profilePageName,
        //           pageBuilder: (context, state) {
        //             return CustomTransitionPage(
        //               key: state.pageKey,
        //               transitionDuration: Duration.zero,
        //               transitionsBuilder:
        //                   (context, animation, secondaryAnimation, child) =>
        //               child,
        //               child: const ProfilePage(),
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //   ],
        // )
      ]);

  static Page getPage({
    required Widget child,
    required GoRouterState state,
    required String name,
  }) {
    return MaterialPage(
      key: state.pageKey,
      child: child,
      name: name,
    );
  }
}
