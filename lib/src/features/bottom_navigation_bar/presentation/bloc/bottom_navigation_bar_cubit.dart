import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
part 'bottom_navigation_bar_state.dart';


class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(const BottomNavigationBarState(currentIndex: 0, isExtended: false));


  void updateNavigationIndexState(int index) {
    emit(BottomNavigationBarState(currentIndex: index, isExtended: isExtended));
  }

  bool isExtended = false;
  int selectedIndex = 0;


  void switchExtended() async{
    isExtended = !isExtended;
    emit(BottomNavigationBarState(currentIndex: selectedIndex,isExtended: isExtended));
  }

}