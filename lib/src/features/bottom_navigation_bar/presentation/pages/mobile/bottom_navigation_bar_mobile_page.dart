import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';



class BottomNavigationBarMobilePage extends StatelessWidget {
  const BottomNavigationBarMobilePage({super.key, required this.navigationShell, required this.selectedIndex, required this.onDestinationSelected});
  final StatefulNavigationShell navigationShell;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final textLocalization = AppLocalizations.of(context)!;
    return Scaffold(
      body: navigationShell,
      extendBody: true,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedIndex: selectedIndex,
        destinations: [
          NavigationDestination(label: textLocalization.home, icon: const Icon(IconManager.home, size: AppSize.s24), selectedIcon: const Icon(IconManager.home, size: AppSize.s24),),
          NavigationDestination(label: textLocalization.book, icon: const Icon(IconManager.book, size: AppSize.s24), selectedIcon: const Icon(IconManager.book, size: AppSize.s24),),
          NavigationDestination(label: textLocalization.myTrips, icon: const Icon(IconManager.airplane, size: AppSize.s24), selectedIcon: const Icon(IconManager.airplane, size: AppSize.s24),),
          NavigationDestination(label: textLocalization.profile, icon:const Icon(IconManager.person, size: AppSize.s24), selectedIcon: const Icon(IconManager.person, size: AppSize.s24),),
        ],
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
