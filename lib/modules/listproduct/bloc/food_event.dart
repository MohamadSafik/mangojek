import 'package:equatable/equatable.dart';

// @immutable
abstract class FoodEvent extends Equatable {
  const FoodEvent();
}

class FoodLoadEvent extends FoodEvent {
  @override
  List<Object> get props => [];
}
