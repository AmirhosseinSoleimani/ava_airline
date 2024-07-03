import 'package:ava_airline/src/features/header/header.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
        smallScreen: MobileNavbar(),
        largeScreen: DesktopNavbar(),
    );
  }
}
