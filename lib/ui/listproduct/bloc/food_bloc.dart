import 'package:mangojek/repository/food_repository.dart';
import 'package:bloc/bloc.dart';
import 'food_event.dart';
import 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  final _foodRepository = FoodRepository();

  FoodBloc() : super(FoodLoadingState()) {
    on<FoodEvent>((event, emit) async {
      if (event is FoodLoadEvent) {
        emit(FoodLoadingState());
      }
      try {
        final foods = await _foodRepository.getFood();
        emit(FoodLoadState(foods: foods));
      } catch (e) {
        emit(FoodErrorState(error: e.toString()));
      }
    });
  }
}
