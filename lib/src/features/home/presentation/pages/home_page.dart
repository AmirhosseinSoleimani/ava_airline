import 'package:ava_airline/src/features/home/home.dart';


class HomePage extends StatelessWidget {
  static const homePageName = 'home-page';
  static const homePagePath = '/home-page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AvaResponsiveWidget(
      smallScreen: HomePageMobile(),
      largeScreen: const HomePageWeb(),
    );
  }
}
