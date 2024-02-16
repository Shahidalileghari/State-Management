import 'package:day_four/Animated.dart';
import 'package:day_four/Day_four.dart';
import 'package:flutter/material.dart';

import 'Day_six.dart';
import 'List.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home:  const Lists(),
    );
  }
}

