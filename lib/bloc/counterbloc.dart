import 'package:bloc/bloc.dart';

class CounterBloc extends Cubit<int> {
  CounterBloc({this.initialData = 0}) : super(initialData);
  int initialData;
  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
