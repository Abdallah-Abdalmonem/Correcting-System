import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'doctorfuncationality_state.dart';

class DoctorfuncationalityCubit extends Cubit<DoctorfuncationalityState> {
  DoctorfuncationalityCubit() : super(DoctorfuncationalityInitial());

  static DoctorfuncationalityCubit get(context) => BlocProvider.of(context);

  String selectedValue = '';
  void changeSelectedValue(String value) {
    selectedValue = value;
    emit(SelectRadioButtonState());
  }
}
