import 'package:flutter/material.dart';
import 'package:schedule_calendar/screens/screens.dart';

class RouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return throw Exception('Error 404');
    }
  }
}
