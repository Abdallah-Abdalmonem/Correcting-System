part of 'bottom_navigation_bar_cubit.dart';

@immutable
abstract class BottomNavigationBarState {
  final int tabIndex;
  const BottomNavigationBarState({this.tabIndex = 0});
}

class BottomNavigationBarInitial extends BottomNavigationBarState {
  const BottomNavigationBarInitial({required super.tabIndex});
}
