import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/confirm_and_pay.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/search_result_page.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/user_info_page.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/confirm/confirm_page.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/flight_selection/flight_selection_page.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/passenger_information/passenger_information_widget.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/special_services/special_services_page.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/notifications.dart';
import 'package:ava_airline/src/features/video_player/presentation/pages/video_player_page.dart';
import 'package:flutter/foundation.dart';

import '../features/static_contents/presentation/incapacitated-passenger-wheelchair/incapacitated-passenger-wheelchair.dart';

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
      initialLocation:
          kIsWeb ? HomePage.homePagePath : SplashPage.splashPagePath,
      debugLogDiagnostics: true,
      routes: [
        ///splash
        GoRoute(
          path: SplashPage.splashPagePath,
          name: SplashPage.splashPageName,
          builder: (context, state) => const SplashPage(),
        ),

        ///notificdations
        GoRoute(
          path: NotificationsPage.notificationsPagePath,
          name: NotificationsPage.notificationsPageName,
          builder: (context, state) => const NotificationsPage(),
        ),

        ///TABs
        GoRoute(
          path: FlightSelectionPage.flightSelectionPagePath,
          name: FlightSelectionPage.flightSelectionPageName,
          builder: (context, state) => const FlightSelectionPage(),
        ),

        GoRoute(
          path: PassengerInformationPage.passengerInformationPagePath,
          name: PassengerInformationPage.passengerInformationPageName,
          builder: (context, state) => const PassengerInformationPage(),
        ),

        GoRoute(
          path: SpecialServicesPage.specialServicesPagePath,
          name: SpecialServicesPage.specialServicesPageName,
          builder: (context, state) => const SpecialServicesPage(),
        ),
        GoRoute(
          path: ConfirmPage.confirmPagePath,
          name: ConfirmPage.confirmPageName,
          builder: (context, state) => const ConfirmPage(),
        ),

        GoRoute(
          path: VideoPlayerPage.videoPlayerPagePath,
          name: VideoPlayerPage.videoPlayerPageName,
          builder: (context, state) => const VideoPlayerPage(),
        ),

        GoRoute(
          path: IncapacitatedPassengerWheelchairPage.incapacitatedPassengerWheelchairPagePath,
          name: IncapacitatedPassengerWheelchairPage.incapacitatedPassengerWheelchairPageName,
          builder: (context, state) => const IncapacitatedPassengerWheelchairPage(),
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
                  path: BookFlightPage.bookPagePath,
                  name: BookFlightPage.bookPageName,
                  pageBuilder: (context, state) {
                    return CustomTransitionPage(
                      key: state.pageKey,
                      transitionDuration: Duration.zero,
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              child,
                      child: const BookFlightPage(),
                    );
                  },
                ),
                GoRoute(
                  path: SearchResultPage.pagePath,
                  name: SearchResultPage.pageName,
                  builder: (context, state) => const SearchResultPage(),
                ),
                GoRoute(
                  path: UserInfoPage.pagePath,
                  name: UserInfoPage.pageName,
                  builder: (context, state) => const UserInfoPage(),
                ),
                GoRoute(
                  path: ConfirmAndPay.pagePath,
                  name: ConfirmAndPay.pageName,
                  builder: (context, state) => const ConfirmAndPay(),
                )
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
