import 'package:day1/routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    initialRoute: '/',
    routes: appRoutes,
  ));
}
