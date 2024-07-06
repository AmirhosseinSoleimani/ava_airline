import 'package:ava_airline/src/features/features.dart';


class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BottomNavigationBarCubit(),
      child: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
        builder: (context, state) {
        return AvaResponsiveWidget(
          smallScreen: BottomNavigationBarMobilePage(
            navigationShell: navigationShell,
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (int index) {
              context.read<BottomNavigationBarCubit>().updateNavigationIndexState(index);
              navigationShell.goBranch(
                index,
                initialLocation: index == navigationShell.currentIndex,
              );
            },
          ),
          largeScreen: const HomePage(),
        );
      },
      ),
    );
  }
}
