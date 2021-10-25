import 'package:flutter/material.dart';
import 'package:flutter_apperentice_chapter3/screens/home.dart';
import 'fooderlich_theme.dart';
import './screens/home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();

    return MaterialApp(title: 'Fooderlich', theme: theme, home: const Home());
  }
}
