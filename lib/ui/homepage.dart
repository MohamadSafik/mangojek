import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangojek/ui/listproduct/view/listproduct.dart';

import '../bloc/counterbloc.dart';
import '../bloc/dark_mode_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final CounterBloc counter = CounterBloc();
  final DarkModeBloc darkMode = DarkModeBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<DarkModeBloc, bool>(
          bloc: darkMode,
          builder: (context, state) {
            return GestureDetector(
                onTap: (() {
                  (state == false) ? darkMode.darkMode() : darkMode.whiteMode();
                  print(state);
                }),
                child: const Text("widget.title"));
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListProduct()),
                );
              },
              icon: const Icon(Icons.next_plan))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, int>(
              bloc: counter,
              builder: (BuildContext context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
