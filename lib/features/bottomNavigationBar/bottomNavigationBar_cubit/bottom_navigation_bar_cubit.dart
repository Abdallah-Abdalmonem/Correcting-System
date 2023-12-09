import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(BottomNavigationBarInitial(tabIndex: 0));
  // int tabIndex = 0;
  changeTab({required int tabIndex}) {
    print(tabIndex);
    emit(BottomNavigationBarInitial(tabIndex: tabIndex));
  }
}
