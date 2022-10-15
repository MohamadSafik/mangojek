import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangojek/modules/listproduct/bloc/counter_order_bloc.dart';
import 'package:mangojek/bloc/dark_mode_bloc.dart';
import 'package:mangojek/bloc/searchbloc.dart';
import 'package:mangojek/modules/listproduct/bloc/food_bloc.dart';
import 'package:mangojek/modules/listproduct/bloc/food_event.dart';

import 'package:mangojek/modules/homepage.dart';

import 'bloc/counterbloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final DarkModeBloc theme = DarkModeBloc();
  @override
  Widget build(BuildContext context) {
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
            create: (context) => CounterOrderBloc(),
          ),
          BlocProvider(
            create: (context) => theme,
          )
        ],
        child: BlocBuilder<DarkModeBloc, bool>(
          bloc: theme,
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: (state == false) ? ThemeData.light() : ThemeData.dark(),
              // ThemeData(
              //   primarySwatch: Colors.blue,
              // ),
              home: const HomePage(),
            );
          },
        ));
  }
}
