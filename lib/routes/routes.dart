import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../pages/not_found.dart';
import '../pages/other.dart';
import '../bloc/counter.dart';
import '../home/home.dart';

class MyRouter {
  final MyCounter mycounter = MyCounter();
  Route onRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            builder: ((context) => BlocProvider.value(
                  value: mycounter,
                  child: HomePage(),
                )));
      case "/other":
        return MaterialPageRoute(
            builder: ((context) => BlocProvider.value(
                  value: mycounter,
                  child: const OtherPage(),
                )));

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        );
    }
  }
}
