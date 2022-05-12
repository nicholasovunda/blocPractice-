import 'dart:developer';

import 'package:bloc_practice/business_logic/cubit/counter_cubit.dart';
import 'package:bloc_practice/presentation/screens/home_screen.dart';
import 'package:bloc_practice/presentation/screens/second_screen.dart';
import 'package:bloc_practice/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  final CounterCubit _counterCubit = CounterCubit();
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: 'HomePage',
            color: Colors.blueAccent,
          ),
        );
        break;
      case '/second':
        return MaterialPageRoute(
          builder: (_) => const SecondScreen(
            title: 'Second screen',
            color: Colors.redAccent,
          ),
        );
      case '/third':
        return MaterialPageRoute(
          builder: (_) => const ThirdScreen(
            title: 'Third Screen',
            color: Colors.greenAccent,
          ),
        );
        break;
      default:
        return null;
    }
  }
}
