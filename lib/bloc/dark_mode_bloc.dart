import 'package:bloc/bloc.dart';

class DarkModeBloc extends Cubit<bool> {
  DarkModeBloc({this.initialData = false}) : super(initialData);
  bool initialData;
  void darkMode() => emit(true);
  void whiteMode() => emit(false);
}
