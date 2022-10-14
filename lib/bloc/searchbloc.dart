import 'package:bloc/bloc.dart';

class SearchBloc extends Cubit<bool> {
  SearchBloc({this.initialData = false}) : super(initialData);
  bool initialData;
  void showSearch() => emit(true);
  void hiddenSearch() => emit(false);
}
