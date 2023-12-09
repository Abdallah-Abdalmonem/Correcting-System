import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'instructor_state.dart';

class InstructorCubit extends Cubit<InstructorState> {
  InstructorCubit() : super(InstructorInitial());
}
