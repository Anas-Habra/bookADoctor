import 'package:book_a_doctor/features/layout/bloc/bottom_navigation_bar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarCubit extends Cubit<ChangeBottomNavigationIndexState> {
  BottomNavigationBarCubit()
    : super(ChangeBottomNavigationIndexState(pageIndex: 0));

  void changePageIndex({required int newPageIndex}) {
    emit(ChangeBottomNavigationIndexState(pageIndex: newPageIndex));
  }
}
