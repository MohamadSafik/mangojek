import 'package:bloc/bloc.dart';
import 'package:mangojek/models/food_model.dart';

class CounterOrderBloc extends Cubit<bool> {
  CounterOrderBloc({this.initialData = false}) : super(initialData);
  bool initialData;
  void showCounterOrder() => emit(true);
  // void index(int index) => emit(state);
  void hiddenCounterOrder() => emit(false);
}
