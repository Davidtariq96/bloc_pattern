// import 'package:bloc_pattern/logic/cubit/counter_cubit.dart';
import 'package:bloc_pattern/presentation/screens/home_screen.dart';
import 'package:bloc_pattern/presentation/screens/second_screen.dart';
import 'package:bloc_pattern/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  // final CounterCubit _counterCubit = CounterCubit();

  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const MyHomeScreen(title: "my home page"),
        );

      case '/second':
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                title: "My second screen", color: Colors.blue));

      case '/third':
        return MaterialPageRoute(
            builder: (_) =>
                const ThirdScreen(title: "third screen", color: Colors.purple));

      default:
        return null;
    }
  }
}
