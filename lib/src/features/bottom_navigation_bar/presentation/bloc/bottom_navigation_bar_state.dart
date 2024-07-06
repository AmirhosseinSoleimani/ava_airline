part of 'bottom_navigation_bar_cubit.dart';


class BottomNavigationBarState extends Equatable {
  final int currentIndex;
  final bool isExtended;
  const BottomNavigationBarState({required this.currentIndex, required this.isExtended});

  @override
  List<Object?> get props => [currentIndex,isExtended];

}