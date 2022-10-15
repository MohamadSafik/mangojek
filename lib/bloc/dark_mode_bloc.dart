import 'package:bloc/bloc.dart';

class DarkModeBloc extends Cubit<bool> {
  DarkModeBloc({this.initialData = false}) : super(initialData);
  bool initialData;
  void darkMode() => emit(true);
  void whiteMode() => emit(false);

  @override
  void onChange(Change<bool> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
