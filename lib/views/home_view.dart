import 'package:basic_flutter/views/calculator_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(bottom: false, child: CalculatorView()));
  }
}
