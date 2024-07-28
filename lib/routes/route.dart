import 'package:day1/pages/day1/day1_screen.dart';
import 'package:day1/pages/day2/day02_screen.dart';
import 'package:day1/pages/home_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomeScreen(),
  '/day1': (context) => const Day1Screen(),
  '/day2': (context) => const Day02Screen()
};
