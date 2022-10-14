import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangojek/bloc/counter_order_bloc.dart';
import 'package:mangojek/bloc/dark_mode_bloc.dart';
import 'package:mangojek/bloc/searchbloc.dart';
import 'package:mangojek/ui/listproduct/bloc/food_bloc.dart';
import 'package:mangojek/ui/listproduct/bloc/food_event.dart';

import 'package:mangojek/ui/homepage.dart';

import 'bloc/counterbloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DarkModeBloc darkMode = DarkModeBloc();

    // return BlocProvider<FoodBloc>(
    //   create: (BuildContext context) => FoodBloc()..add(LoadFoodEvent()),
    return MultiBlocProvider(
      providers: [
        BlocProvider<FoodBloc>(
          create: (BuildContext context) => FoodBloc()..add(FoodLoadEvent()),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
        BlocProvider(
          create: (context) => DarkModeBloc(),
        ),
        BlocProvider(
          create: (context) => CounterOrderBloc(),
        )
      ],
      child: BlocBuilder<DarkModeBloc, bool>(
        bloc: darkMode,
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: (state == false) ? ThemeData.light() : ThemeData.dark(),
            // ThemeData(
            //   primarySwatch: Colors.blue,
            // ),
            home: HomePage(),
          );
        },
      ),
    );
  }
}
