import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'buttonstate_state.dart';

class ButtonstateCubit extends Cubit<ButtonstateState> {
  ButtonstateCubit() : super(ButtonstateInitial());
}
