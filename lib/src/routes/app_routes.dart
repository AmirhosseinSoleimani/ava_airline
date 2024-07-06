import 'package:ava_airline/src/features/features.dart';

class Routes {
  static final parentNavigatorKey = GlobalKey<NavigatorState>();
  static final homeTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'homeTabNavigatorKey');
  static final profileTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'profileTabNavigatorKey');
  static final bookTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'bookTabNavigatorKey');
  static final myTripsTabNavigatorKey =
  GlobalKey<NavigatorState>(debugLabel: 'myTripsTabNavigatorKey');

  static final routes = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: SplashPage.splashPagePath,
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: SplashPage.splashPagePath,
          name: SplashPage.splashPageName,
          builder: (context, state) => const SplashPage(),
        ),
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomNavigationBarPage(navigationShell: navigationShell);
          },
          parentNavigatorKey: parentNavigatorKey,
          branches: [
            StatefulShellBranch(
              navigatorKey: homeTabNavigatorKey,
              routes: [
                GoRoute(
                  path: HomePage.homePagePath,
                  name: HomePage.homePageName,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      transitionDuration: Duration.zero,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                      child,
                      child: const HomePage(),
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: bookTabNavigatorKey,
              routes: [
                GoRoute(
                  path: BookPage.bookPagePath,
                  name: BookPage.bookPageName,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      transitionDuration: Duration.zero,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                      child,
                      child: const BookPage(),
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: myTripsTabNavigatorKey,
              routes: [
                GoRoute(
                  path: MyTripsPage.myTripsPagePath,
                  name: MyTripsPage.myTripsPageName,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      transitionDuration: Duration.zero,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                      child,
                      child: const MyTripsPage(),
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: profileTabNavigatorKey,
              routes: [
                GoRoute(
                  path: ProfilePage.profilePagePath,
                  name: ProfilePage.profilePageName,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      transitionDuration: Duration.zero,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                      child,
                      child: const ProfilePage(),
                    );
                  },
                ),
              ],
            ),
          ],
        )
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
