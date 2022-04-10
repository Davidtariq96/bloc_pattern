import 'package:bloc_pattern/logic/cubit/counter_cubit.dart';
import 'package:bloc_pattern/presentation/screens/home_screen.dart';
import 'package:bloc_pattern/presentation/screens/second_screen.dart';
import 'package:bloc_pattern/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (BuildContext context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomeScreen(title: 'Flutter Demo Home Page'),
          '/second': (context) =>
              const SecondScreen(title: "Second screen", color: Colors.green),
          '/third': (context) =>
              const ThirdScreen(title: "Third screen", color: Colors.red)
        },
      ),
    );
  }
}
