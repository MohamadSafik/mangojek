import 'package:equatable/equatable.dart';
import 'package:mangojek/models/food_model.dart';

// @immutable
abstract class FoodState extends Equatable {}

class FoodLoadingState extends FoodState {
  @override
  List<Object?> get props => [];
}

class FoodLoadState extends FoodState {
  final List<FoodModel> foods;

  FoodLoadState({required this.foods});

  @override
  List<Object?> get props => throw UnimplementedError();
}

class FoodErrorState extends FoodState {
  final String error;

  FoodErrorState({required this.error});

  @override
  List<Object?> get props => throw UnimplementedError();
}
