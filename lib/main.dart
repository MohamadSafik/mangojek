import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangojek/bloc/food_bloc.dart';
import 'package:mangojek/bloc/food_event.dart';

import 'package:mangojek/ui/homepage.dart';

import 'bloc/counterbloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<FoodBloc>(
    //   create: (BuildContext context) => FoodBloc()..add(LoadFoodEvent()),
    return MultiBlocProvider(
      providers: [
        BlocProvider<FoodBloc>(
          create: (BuildContext context) => FoodBloc()..add(FoodLoadEvent()),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
