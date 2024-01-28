// MyApp is a widget which is being used in the main.dart
import 'package:basic_flutter/views/home_view.dart';
import 'package:flutter/material.dart';

// Stateless widget is a widget that does not require mutable state. Eg: the app background, navbar
// Stateful widget is a widget that requires mutable state. Eg: the text in the body of the app

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Basic Flutter App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const HomeView());
  }
}
